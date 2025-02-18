import 'dart:io';
import 'package:math_expressions/math_expressions.dart';

void main() {
  print("Calculadora Simples");
  print("Digite uma operação:");

  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    try {
      
      input = input.replaceAll(" ", "");
      print ("Processando a expressão: $input");

      Parser parser = Parser();
      Expression expression = parser.parse(input);
      ContextModel contextModel = ContextModel();
      double result = expression.evaluate(EvaluationType.REAL, contextModel);

      print("Resultado: $result");
    } catch (e) {
      print("Expressão inválida.");
      print("Detalhes do erro: $e");
    }
  } else {
    print("Nenhuma entrada foi fornecida.");
  }
}