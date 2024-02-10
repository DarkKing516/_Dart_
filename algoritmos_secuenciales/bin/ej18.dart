import 'dart:io';

void main() {
  print('Digite el valor de su matrícula');
  double valorMatricula = double.parse(stdin.readLineSync()!);

  double primeraCuota = valorMatricula * 0.40;
  double segundaCuota = valorMatricula * 0.25;
  double terceraCuota = valorMatricula * 0.20;
  double cuartaCuota = valorMatricula * 0.15;

  print('El valor de la primera cuota es: \$$primeraCuota');
  print('El valor de la segunda cuota es: \$$segundaCuota');
  print('El valor de la tercera cuota es: \$$terceraCuota');
  print('El valor de la cuarta cuota es: \$$cuartaCuota');
}
