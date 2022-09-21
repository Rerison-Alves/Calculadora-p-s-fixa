import 'dart:io';

void main(){
  print('Digite a expressão:');
  var expressao = stdin.readLineSync();
  calcula(expressao);
} 


void push(double i, List<double> pilha, int top){
  pilha[top] = i;
}

double pop(List<double> pilha, int top) {
  double i = pilha[top];
  pilha[top]= 0;
  return i;
}

void calcula(var expressao){
  List<double> pilha = List.filled(200, 0);
  int top=0;
  for(var x in expressao.split(' ')){
    if(x!='+' && x!='-' && x!='*' && x!='/'){
      if(pilha[0]!=0) top++;
      push(double.parse(x), pilha, top);
    }else{
      switch(x){
        case '+':{
          double b = pilha[top];
          pop(pilha, top);
          if(top!=0) top--;
          double a = pilha[top];
          pop(pilha, top);
          if(top!=0) top--;
          if(pilha[0]!=0) top++;
          push(a+b, pilha, top);
        }
        break;
        case '-':{
          double b = pilha[top];
          pop(pilha, top);
          if(top!=0) top--;
          double a = pilha[top];
          pop(pilha, top);
          if(top!=0) top--;
          if(pilha[0]!=0) top++;
          push(a-b, pilha, top);
        }
        break;
        case '*':{
          double b = pilha[top];
          pop(pilha, top);
          if(top!=0) top--;
          double a = pilha[top];
          pop(pilha, top);
          if(top!=0) top--;
          if(pilha[0]!=0) top++;
          push(a*b, pilha, top);
        }
        break;
        case '/':{
          double b = pilha[top];
          pop(pilha, top);
          if(top!=0) top--;
          double a = pilha[top];
          pop(pilha, top);
          if(top!=0) top--;
          if(pilha[0]!=0) top++;
          push(a/b, pilha, top);
        }
        break;
      }
    }
  }
  print(pilha[0]);
}
