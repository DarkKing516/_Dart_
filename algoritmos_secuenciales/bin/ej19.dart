import 'dart:io';

void main() {
  print('Ingrese el nombre del estudiante:');
  String nombre = stdin.readLineSync()!;

  print('Ingrese el programa de formación del estudiante:');
  String programa = stdin.readLineSync()!;

  print('Ingrese el número de ficha del estudiante:');
  stdin.readLineSync();

  List<double> notas = [];
  for (int i = 1; i <= 5; i++) {
    print('Ingrese la nota $i del estudiante:');
    double nota = double.parse(stdin.readLineSync()!);
    notas.add(nota);
  }

  double suma = 0;
  for (double nota in notas) {
    suma += nota;
  }

  double promedio = suma / notas.length;

  print('Nombre del estudiante: $nombre');
  print('Programa de formación: $programa');
  print('Promedio final: $promedio');
}
