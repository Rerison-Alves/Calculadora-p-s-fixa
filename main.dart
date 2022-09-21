import 'dart:io';

void main(){
  print('Digite a expressão:');
  var expressao = stdin.readLineSync();
  Calculadora calculadora = new Calculadora();
  print(calculadora.calcula(expressao));
} 

void push(double i, List<double> pilha){
  if (pilha[0] != 0) Calculadora.top++;
  pilha[Calculadora.top] = i;
}

double pop(List<double> pilha) {
  double i = pilha[Calculadora.top];
  pilha[Calculadora.top]= 0;
  if (Calculadora.top != 0) Calculadora.top--;
  return i;
}
class Calculadora {
  List<double> pilha = List.filled(200, 0);
  static int top = 0;
  double calcula(var expressao) {
    for (var x in expressao.split(' ')) {
      if (x != '+' && x != '-' && x != '*' && x != '/') {
        push(double.parse(x), pilha);
      } else {
        switch (x) {
          case '+':
            {
              double b = pilha[top];
              pop(pilha);
              double a = pilha[top];
              pop(pilha);
              push(a + b, pilha);
            }
            break;
          case '-':
            {
              double b = pilha[top];
              pop(pilha);
              double a = pilha[top];
              pop(pilha);
              push(a - b, pilha);
            }
            break;
          case '*':
            {
              double b = pilha[top];
              pop(pilha);
              double a = pilha[top];
              pop(pilha);
              push(a * b, pilha);
            }
            break;
          case '/':
            {
              double b = pilha[top];
              pop(pilha);
              double a = pilha[top];
              pop(pilha);
              push(a / b, pilha);
            }
            break;
        }
      }
    }
    top=0;
    return pilha[0];
  }
}
