import 'dart:io';

void main(List<String> arguments) {
  print('Ingrese el total recaudado en el día:');
  double totalRecaudado = double.parse(stdin.readLineSync()!);

  double comisionConductor = totalRecaudado * 0.19;

  print('La comisión del conductor por el día trabajado es: \$$comisionConductor');
}
