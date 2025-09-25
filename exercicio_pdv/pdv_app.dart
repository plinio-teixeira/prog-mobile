import 'produto.dart';
import 'item_compra.dart';
import 'carrinho_compra.dart';

class PDVApp {
  CarrinhoCompra carrinho = CarrinhoCompra();

  void iniciar() {
    print('\n== SISTEMA DE PDV');
    print('\nBem-vindo ao sistema!');

    bool continuar = true;
  
        while (continuar) {
        print('Deseja adicionar um produto ao carrinho? (S/N)');
            String resposta = stdin.readLineSync()?.toUpperCase() ?? 'N';
        
            if (resposta == 'S'){
                ItemCompra item = lerDadosCompra();
                carrinho.adicionarItem(item);
                print('Produto adicionado ao carrinho!\n');
            } else(resposta == 'N'){
                continuar = false;
            }
        }

        if (carrinho.estaVazio()){
            print('\nCarrinho vazio. Nenhum produto foi adicionado.');
            print('\nObrigado Por usar o sistema PDV.');
        } else {
            exibirResumoCompra();
        }
        ItemCompra lerDadosCompra() {
            print('\nInforme o nome do produto--');
            print('\nNome do proto');
            String nome = stdin.readLineSync() ?? '';

            double valor = 0;
            bool valorValido = false;

            while(!valorValido){
                print('\nvalor unitario');
                String input = stdin.readLineSync() ?? '0';
                valorUnitario = double.parse(input.replaceAll(',', '.'));
                if(valorUnitario <= 0){
                    print('\nValor desse ser maior que zero.');
                } else {
                    valorValido = true;
                }

            }
        } 

        int quantidade = 0;
        bool quantidadeValida = true;

        while(!quantidadeValida){
            print('\nQuantidade:');
            String input = stdin.readLineSync() ?? '0';
            quantidade = int.parse(input);
            if(quantidade <= 0){
                print('\nQuantidade deve ser maior que zero.');
            } else {
                quantidadeValida = true;
            }
        }

        Produto produto = Produto(nome, valorUnitario);
        return ItemCompra( produto,  quantidade);

    }

    void exibirResultadoCompra(){
        double total = carrinho.calcularTotal();
        double desconto = carrinho.calcularDesconto();
        double valorFinal = carrinho.calcularValorFinal();

        print('\n-- RESUMO DA COMPRA ==');
        print('itens do carriinho');

        for (int i = 0; i <carrinho.itens.length; i++){
            print('${i + 1} - ${carrinho.itens[i]}');
        }

        print('\ntotal de itns: ${carrinho.quantidadeItens()}');
        print('\nvalor total: R\$ ${total.toStringAsFixed(2)}');

        if (desconto > 0){
            print('desconto: (10%): R\$ ${desconto.toStringAsFixed(2)}');
        }else{
            print('desconto: R\$ 0.00');
        }
        print('\nvalor final: R\$ ${valorFinal.toStringAsFixed(2)}');
        print('\nObrigado por usar o sistema PDV.');
    }



}