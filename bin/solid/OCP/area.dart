import 'dart:math' show pi;

abstract class IArea {
  double resultArea();
  IArea();
}

class Circle implements IArea {
  final double radius;
  Circle(this.radius);
  @override
  double resultArea() => (radius * radius) * pi / 12;
}

class Square implements IArea {
  final double side;
  Square(this.side);

  @override
  double resultArea() => side * side;
}

class CalculateArea {
  double calculateArea(IArea shape) => shape.resultArea();
}

void main(List<String> args) {
  final double resultArea = CalculateArea().calculateArea(Circle(2));
  print(resultArea);
}

abstract class Banco {
  late int saldoDisponivel;
  sacarDinheiro(int dinheiro);
}

class SacarContaFisica extends Banco {
  @override
  set saldoDisponivel(int saldoDisponivel) {
    super.saldoDisponivel = 4200;
  }

  @override
  sacarDinheiro(int dinheiro) {
    if (saldoDisponivel >= dinheiro) {
      print("você sacou $dinheiro, seu saldo disponível é de = ${saldoDisponivel - dinheiro}");
    } else {
      print("Ops... Saldo indisponível. Não foi possível concluir a sua operação.");
    }
  }
}

class SacarContaJuridica extends Banco {
  @override
  set saldoDisponivel(int saldoDisponivel) {
    super.saldoDisponivel = 9000;
  }

  @override
  sacarDinheiro(int dinheiro) {
    if (saldoDisponivel <= dinheiro) {
      print("Você não tem saldo suficiente, mas fizemos um emprestimo, conforme configurado pela sua conta");
    } else {
      print("você sacou $dinheiro, deseja fazer mais alguma coisa?");
    }
  }
}
