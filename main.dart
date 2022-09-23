import 'dart:io';

void main() {
  print('Digite a expressão:');
  var expressao = stdin.readLineSync();
  Calculadora calculadora = new Calculadora();
  //try {
    print(calculadora.calcula(expressao));
  //}
  //on Numeric catch(e){
    //print (e.Msg());
  //}
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

      //if(pilha.length==1 && x == '+' || x == '-' || x == '*' || x == '/'){
        //print('erro');
      //}


      //if (!numerico(x)) {
        //throw Numeric();
      //}


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

//bool numerico(String string) {

  //final numericRegex =
  //RegExp(r"^-?[0-9+*/ -]");

 // return numericRegex.hasMatch(string);
//}

//class Numeric implements Exception{
  //String Msg() {
    //return 'erro';
 // }
//}
