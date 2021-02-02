void main() {
  final Calc addition = new Addition(n: 7, m: 6);
  print(addition.calc());
  final Calc subtraction = new Subtraction(n: 7, m: 6);
  print(subtraction.calc());
  final Calc multiplication = new Multiplication(n: 7, m: 6);
  print(multiplication.calc());
  final Calc division = new Division(n: 7, m: 6);
  print(division.calc());

}

void printCalc(Calc calculator){
  print(calculator.calc());
}

abstract class Calc{
  double calc();
}

class Addition implements Calc{
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

class Subtraction implements Calc{
  double _num1;
  double _num2;

  Subtraction({double n, double m}){
    this._num1 = n;
    this._num2 = m;
  }

  double calc(){
    return _num1 - _num2;
  }
}

class Multiplication implements Calc{
  double _num1;
  double _num2;

  Multiplication({double n, double m}){
    this._num1 = n;
    this._num2 = m;
  }

  double calc(){
    return _num1 * _num2;
  }
}

class Division implements Calc{
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




