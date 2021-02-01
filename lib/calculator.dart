void main() {
  final Addition addition = Addition(n: 7, m: 6);
  print(addition.calc());
  final Subtraction subtraction = Subtraction(num1: 7, num2: 6);
  print(subtraction.calc());
  final Multiplication multiplication = Multiplication(num1: 7, num2: 6);
  print(multiplication.calc());
  final Division division = Division(n: 7, m: 6);
  print(division.calc());

}

abstract class Calc{
  double calc();
}

class Addition{
  double _num1;
  double _num2;

  Addition({double n, double m}){
    this._num1 = n;
    this._num2 = m;
  }

  double calc(){
    return _num1 + _num2;
  }
}

class Subtraction{
  double num1;
  double num2;

  Subtraction({this.num1, this.num2});

  double calc(){
    return num1 - num2;
  }
}

class Multiplication{
  double num1;
  double num2;

  Multiplication({this.num1, this.num2});

  double calc(){
    return num1 * num2;
  }
}

class Division{
  double _num1;
  double _num2;

  double get num1 => _num1;
  double get num2 => _num2;

  Division({double n, double m}){
    this._num1 = n;
    this._num2 = m;
  }

  double calc(){
    return _num1 / _num2;
  }
}




