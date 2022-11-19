import 'dart:io';

class CalculoImpostoDeRenda {
  Future<String> calcularImpostoDeRenda(dynamic salario) async {
    late String result;
    try {
      if (salario <= 1787.77) {
        result = "Você não tem que declarar imposto de renda.";
      } else if (salario > 1787.77 && salario <= 2679.29) {
        result = "Você deve declarar imposto de renda com um valor de: ${(salario * 0.075).toStringAsFixed(2)}";
      } else if (salario > 2679.29 && salario <= 3572.43) {
        result = "Você deve declarar imposto de renda com um valor de: ${(salario * 0.15.toStringAsFixed(2))}";
      } else if (salario > 3572.43 && salario <= 4463.81) {
        result = "Você deve declarar imposto de renda com um valor de: ${(salario * 0.225).toStringAsFixed(2)}";
      } else if (salario > 4463.81) {
        result = "Você deve declarar imposto de renda com um valor de: ${(salario * 0.275).toStringAsFixed(2)}";
      }
      return Future.value(result);
    } catch (e) {
      return Future.value("É necessário digitar um salário válido, onde deve conter somente números. retire o = $salario");
    }
  }
}

void main(List<String> args) {
  CalculoImpostoDeRenda calculoImpostoDeRenda = CalculoImpostoDeRenda();
  String? name = stdin.readLineSync();

  calculoImpostoDeRenda.calcularImpostoDeRenda(name).then((value) => print(value));
}
