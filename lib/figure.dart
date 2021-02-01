import 'dart:math';
void main() {
  final Square square = new Square(value: 10);
  printArea(square);
  final Shape circle = new Circle(value: 5);
  printArea(circle);
  final Trapeze trapeze = new Trapeze(clue: 13, leg: 7, hand: 5);
  print(trapeze.area());
}

void printArea(Shape shape){
  print(shape.area());
}

abstract class Shape{
  double area();
}

class Square implements Shape{
  double _side;

  double get side => _side;

  Square({double value}) {
    this._side = value;
  }

  double area() {
    return _side * _side;
  }
}

class Circle implements Shape {
  double _radius;

  double get radius => _radius;

  Circle({double value}){
    this._radius = value;
  }

  @override
  double area() {
    return _radius * _radius * pi;
  }
}

class Trapeze{
  double _long;
  double _short;
  double _altitude;

  double get long => _long;

  double get short => _short;

  double get altitude => _altitude;

  Trapeze({double clue, double leg, double hand}){
    this._long = clue;
    this._short = leg;
    this._altitude = hand;
  }

  double area(){
    return (_long + _short) / 2 * _altitude;
  }
}