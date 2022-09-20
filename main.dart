import 'dart:io';

void main(){
  print('Digite a expressão:');
  var expressao = stdin.readLineSync();
  calcula(expressao);
} 

void push(Double i, List<Double> pilha, int top){
  if(top!=0) {
    pilha[++top] = i;
  }else{
    pilha[top] = i;
  }
}

Double pop(List<Double> pilha, int top) {
  Double i = pilha[top];
  pilha[top]= new Double();
  top--;
  return i;
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
