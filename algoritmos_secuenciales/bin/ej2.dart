import 'dart:io';

void main(List<String> arguments) {
  print('Ingrese el primer número:');
  double numero1 = double.parse(stdin.readLineSync()!);

  print('Ingrese el segundo número:');
  double numero2 = double.parse(stdin.readLineSync()!);

  double suma = numero1 + numero2;
  double resta = numero1 - numero2;
  double multiplicacion = numero1 * numero2;
  double division = numero1 / numero2;

  print('El resultado de la suma es: $suma');
  print('El resultado de la resta es: $resta');
  print('El resultado de la multiplicación es: $multiplicacion');
  print('El resultado de la división es: $division');
}
