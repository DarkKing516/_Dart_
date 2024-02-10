import 'dart:io';

void main(List<String> arguments) {
  print('Ingrese la distancia recorrida (en kilómetros):');
  double distancia = double.parse(stdin.readLineSync()!);

  print('Ingrese el tiempo en horas:');
  double tiempo = double.parse(stdin.readLineSync()!);

  double velocidad = distancia / tiempo;

  print('La velocidad a la cual se desplazaba el auto es: $velocidad km/h');
}
