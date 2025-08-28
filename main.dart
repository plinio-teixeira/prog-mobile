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
 } //      (segunda forma) cadastroOutroAluno = respostaUsuario == "S";
    
