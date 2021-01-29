void main() {
  final Plus plus = Plus(num1: 7, num2: 6);
  print(plus.calc());
  final Minus minus = Minus(num1: 7, num2: 6);
  print(minus.calc());
  final Multiply multiply = Multiply(num1: 7, num2: 6);
  print(multiply.calc());
  final Divide divide = Divide(num1: 7, num2: 6);
  print(divide.calc());

}

abstract class Calc{
  double calc();
}

class Plus{
  double num1;
  double num2;

  Plus({this.num1, this.num2});

  double calc(){
    return num1 + num2;
  }
}

class Minus{
  double num1;
  double num2;

  Minus({this.num1, this.num2});

  double calc(){
    return num1 - num2;
  }
}

class Divide{
  double num1;
  double num2;

  Divide({this.num1, this.num2});

  double calc(){
    return num1 / num2;
  }
}

class Multiply{
  double num1;
  double num2;

  Multiply({this.num1, this.num2});

  double calc(){
    return num1 * num2;
  }
}






