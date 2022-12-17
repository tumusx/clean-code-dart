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
