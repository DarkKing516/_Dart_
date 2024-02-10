import 'dart:io';

void main(List<String> arguments) {
  print('Ingrese la cantidad de horas:');
  int horas = int.parse(stdin.readLineSync()!);

  print('Ingrese la cantidad de minutos:');
  int minutos = int.parse(stdin.readLineSync()!);

  print('Ingrese la cantidad de segundos:');
  int segundos = int.parse(stdin.readLineSync()!);

  int totalSegundos = (horas * 3600) + (minutos * 60) + segundos;

  print('La cantidad total de segundos es: $totalSegundos segundos');
}
