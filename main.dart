import 'dart:io';

void main(){
  print('Digite a expressão:');
  var expressao = stdin.readLineSync();
  calcula(expressao);
} 

void calcula(var expressao){
  List<double> pilha = [];
  for(var x in expressao.split(' ')){
    if(x!='+' && x!='-' && x!='*' && x!='/'){
      pilha.add(double.parse(x));
    }else{
      switch(x){
        case '+':{
          double b = pilha.last;
          pilha.removeLast();
          double a = pilha.last;
          pilha.removeLast();
          print(a+b);
          pilha.add(a+b);
        
        }
        break;
        case '-':{
          double b = pilha.last;
          pilha.removeLast();
          double a = pilha.last;
          pilha.removeLast();
          print(a-b);
          pilha.add(a-b);
        }
        break;
        case '*':{
          double b = pilha.last;
          pilha.removeLast();
          double a = pilha.last;
          pilha.removeLast();
          print(a*b);
          pilha.add(a*b);
        }
        break;
        case '/':{
          double b = pilha.last;
          pilha.removeLast();
          double a = pilha.last;
          pilha.removeLast();
          print(a/b);
          pilha.add(a/b);
        }
        break;
      }
      print(pilha);
    }
  }
  
}
