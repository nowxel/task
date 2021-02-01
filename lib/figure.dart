import 'dart:math';
void main() {
  final Square square = Square(slice: 10);
  printArea(square);
  final Shape circle = Circle(value: 5);
  printArea(circle);
  final Trapeze trapeze = Trapeze(clue: 13, leg: 7, hand: 5);
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

  Square({double slice}) {
    this._side = slice;
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

  set long(double clue) {
    _long = clue;
  }

  double get short => _short;

  set short(double leg) {
    _short = leg;
  }

  double get altitude => _altitude;

  set altitude(double hand) {
    _altitude = hand;
  }

  Trapeze({double clue, double leg, double hand}){
    this._long = clue;
    this._short = leg;
    this._altitude = hand;
  }

  double area(){
    return (_long + _short) / 2 * _altitude;
  }
}