import 'dart:io';

void main() {
  print('Digite a expressão:');
  var expressao = stdin.readLineSync();
  Calculadora calculadora = new Calculadora();
  print(calculadora.calcula(expressao));
}

class Calculadora {
  List<double> pilha = List.filled(200, 1/0);
  int top = 0;

  double calcula(var expressao) {
    for (var x in expressao.split(' ')) {
      if (x != '+' && x != '-' && x != '*' && x != '/') {
        push(double.parse(x), pilha);
      } else {
        switch (x) {
          case '+':
            {
              double b = pop(pilha);
              double a = pop(pilha);
              push(a + b, pilha);
            }
            break;
          case '-':
            {
              double b = pop(pilha);
              double a = pop(pilha);
              push(a - b, pilha);
            }
            break;
          case '*':
            {
              double b = pop(pilha);
              double a = pop(pilha);
              push(a * b, pilha);
            }
            break;
          case '/':
            {
              double b = pop(pilha);
              double a = pop(pilha);
              push(a / b, pilha);
            }
            break;
        }
      }
    }
    top = 0;
    return pilha[0];
  }

  void push(double i, List<double> pilha) {
    if (pilha[0] != 1/0) top++;
    pilha[top] = i;
  }

  double pop(List<double> pilha) {
    double i = pilha[top];
    pilha[top] = 0;
    if (top != 1/0) top--;
    return i;
  }
}
