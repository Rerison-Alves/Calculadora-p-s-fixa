import 'dart:io';

void main(){
  print('Digite a expressão:');
  var expressao = stdin.readLineSync();
  calcula(expressao);
} 

void calcula(var expressao){
  List<int> pilha = [];
  for(var x in expressao.split(' ')){
    if(x!='+' && x!='-' && x!='*' && x!='/'){
      pilha.add(int.parse(x));
    }else{
      switch(x){
        case '+':{
          int b = pilha.last;
          pilha.removeLast();
          int a = pilha.last;
          pilha.removeLast();
          print(a+b);
          pilha.add(a+b);
        
        }
        break;
        case '-':{
            
        }
        break;
        case '*':{
              
        }
        break;
        case '/':{
              
        }
        break;
      }
      print(pilha);
    }
  }
  
}
