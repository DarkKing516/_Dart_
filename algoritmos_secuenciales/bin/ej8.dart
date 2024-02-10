import 'dart:io';

void main(List<String> arguments) {
  print('Ingrese el capital a invertir:');
  double capital = double.parse(stdin.readLineSync()!);

  print('Ingrese a cuántos meses quiere saber cuánto ganará:');
  int meses = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= meses; i++) {
    double interest = capital * 0.02;

    double totalMes = capital + interest;

    print('Mes $i:');
    print('El dinero ganado después de $i mes/es será: \$$totalMes');
    print('Interés ganado en el mes: \$$interest');
    capital = totalMes;
  }
}
