import 'dart:io';

void main(){
  List<int> pilha = [];
  var expressao = "5 2 + 3 7 * +";
  var expressao2 = stdin.readLineSync();
    for(var x in expressao2.split(' ')){
      print(x);
    }
}
