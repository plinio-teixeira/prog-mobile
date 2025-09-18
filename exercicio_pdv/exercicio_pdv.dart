void main(){

}

class Produto {
    string nome;
    double valorUnitario; 

    Produto (this.nome, this.valorUnitario);
    @override 
    string toString(){
        return'Produto: $nome - valor: R\$ ${valorUnitario.toStringAsFixed(2)} '
    }
}