import 'dart:io';

void main(List<String> arguments) {
  print('Ingrese el sueldo base del vendedor:');
  double sueldoBase = double.parse(stdin.readLineSync()!);

  double venta1, venta2, venta3;

  print('Ingrese el monto de la primera venta:');
  venta1 = double.parse(stdin.readLineSync()!);

  print('Ingrese el monto de la segunda venta:');
  venta2 = double.parse(stdin.readLineSync()!);

  print('Ingrese el monto de la tercera venta:');
  venta3 = double.parse(stdin.readLineSync()!);

  double comisionTotal = (venta1 + venta2 + venta3) * 0.10;

  double totalMes = sueldoBase + comisionTotal;

  print('La comisión total por las tres ventas es: \$$comisionTotal');
  print('El total que recibirá en el mes es: \$$totalMes');
}
