/* // AULA DE CADASTRO DE ALUNO
import 'dart:io';

void main(){

    List<String?> alunos = [];
    bool cadastroOutroAluno = true;

    while(cadastroOutroAluno){
        print("Informe o nome do aluno:");
        String? nome = stdin.readLineSync();

        alunos.add(nome);

        print('Deseja cadastrar outros alunos?(S / N)');
        var respostaUsuario = stdin.readLineSync();
        if(respostaUsuario == "S"){
            cadastroOutroAluno = true;
        }
        else{
            cadastroOutroAluno = false;
        }
    }
 } //      (segunda forma) cadastroOutroAluno = respostaUsuario == "S"; */
    

// AULA DE CONDIÇÃO IF 
/* import 'dart:io';
    void main (){
        int idade = 18;
        // if(idade >= 18)
        // {
        //     print('pode entrar na balada');
        // }
        
        // print('fim do programa');
         if(idade < 18)
        {
            print('fim do programa');
            return;
        }
        
        print('pode entrar na balada');
    } */
    import 'dart:io';
    void main (){
        int renda = 1000000;
        int saldo = 5000000;
        if ( renda > 1400 && renda < 5000 )
        {print("varejo");
        
        }

        else if (renda > 5000 && renda < 30000)
        {print("vangogh");}

        else if (renda > 30000 && renda < 60000)
           {print("select");}

        else if(renda >= 60000 && renda < 100000)
        {print("exclusive");}

         else if(renda >= 60000 && saldo > 100000)
        {print("exclusive");}
    }