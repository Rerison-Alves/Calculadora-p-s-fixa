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
        try {push(double.parse(x), pilha);}
         catch(Exception){
          print('DIGITE ALGO VÁLIDO');
        }
      }
      if(expressao.isEmpty) {
        print('Digite alguma coisa');
      }

      else {
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
    if(top>0){
      print('ERRO: OPERADOR A MENOS');
      exit(0);
    }
    if(top<0){
      print('ERRO: OPERADOR A MAIS');
      exit(0);
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

