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
import 'dart:io';
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
    }