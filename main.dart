import 'dart:io';

void main(){
  print('Digite a expressão:');
  var expressao = stdin.readLineSync();
  calcula(expressao);
}

void calcula(var expressao){
  List<int> pilha = [];
    for(var x in expressao.split(' ')){
      print(x);
    }
  
}
