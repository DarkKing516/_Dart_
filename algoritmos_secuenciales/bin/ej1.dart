import 'dart:io';

void main(List<String> arguments) {
  print('Ingrese el primer número:');
  int numero1 = int.parse(stdin.readLineSync()!);

  print('Ingrese el segundo número:');
  int numero2 = int.parse(stdin.readLineSync()!);

  print('Ingrese el tercer número:');
  int numero3 = int.parse(stdin.readLineSync()!);

  int suma = numero1 + numero2 + numero3;
  print('El resultado de la suma es: $suma');
}
