import 'dart:io';

void main(List<String> arguments) {
  print('Ingrese las horas trabajadas:');
  double horasTrabajadas = double.parse(stdin.readLineSync()!);

  print('Ingrese el valor por hora:');
  double valorPorHora = double.parse(stdin.readLineSync()!);

  double salario = horasTrabajadas * valorPorHora;

  print('El salario es: \$$salario');
}
