import 'dart:io';

void main() {
  print('Ingrese el monto del préstamo:');
  double montoPrestamo = double.parse(stdin.readLineSync()!);

  double tasaInteresAnual = 0.05;

  double interesesAnuales = montoPrestamo * tasaInteresAnual;

  double interesesTrimestre = (interesesAnuales / 12) * 9;

  double interesesPrimerMes = interesesAnuales / 12;

  double totalPagado = montoPrestamo + interesesAnuales;

  print('Dinero pagado de intereses en un año: \$$interesesAnuales');
  print('Dinero pagado de intereses en el tercer trimestre: \$$interesesTrimestre');
  print('Dinero pagado de intereses en el primer mes: \$$interesesPrimerMes');
  print('Total pagado del préstamo incluyendo intereses: \$$totalPagado');
}
