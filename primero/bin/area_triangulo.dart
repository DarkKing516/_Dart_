void main() {
  final triangulo = Triangulo();

  triangulo.base = 5;
  triangulo.altura = 6;

  print(triangulo);
  print("Area: ${triangulo.area}");
}

class Triangulo {
  double _base = 0;
  double _altura = 0;

  set base(double valorBase) {
    if (valorBase <= 0) {
      throw ("El valor de la base no puede ser menor o igual a 0");
    } else {
      this._base = valorBase;
    }
  }

  set altura(double valorAltura) {
    if (valorAltura <= 0) {
      throw ("El valor de la altura no puede ser menor o igual a 0");
    } else {
      this._altura = valorAltura;
    }
  }

  double get area {
    return (_base * _altura) / 2;
  }

  String toString() => "Base: $_base; Altura: $_altura";
}
