import 'dart:io';

void main(List<String> arguments) {

  print('Ingrese el número de hombres:');
  int hombres = int.parse(stdin.readLineSync()!);

  print('Ingrese el número de mujeres:');
  int mujeres = int.parse(stdin.readLineSync()!);

  int totalAlumnos = hombres + mujeres;
  double porcentajeHombres = (hombres / totalAlumnos) * 100;
  double porcentajeMujeres = (mujeres / totalAlumnos) * 100;

  print('El porcentaje de hombres en el grupo es: $porcentajeHombres%');
  print('El porcentaje de mujeres en el grupo es: $porcentajeMujeres%');
}
