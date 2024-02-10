import 'dart:io';

void main(List<String> arguments) {
  print('Ingrese el Salario del Empleado:');
  double salario = double.parse(stdin.readLineSync()!);

  print('Ingrese el Valor de Ahorro mensual programado:');
  double ahorroMensual = double.parse(stdin.readLineSync()!);

  double aporteSalud = salario * 0.125;

  double aportePensiones = salario * 0.16;

  double totalRecibir = salario - aporteSalud - aportePensiones + ahorroMensual;

  print('Colilla de Pago:');
  print('-------------------------------------------------------');
  print('| Nombre: Juan Perez             Fecha: 10/02/2024    |');
  print('|-----------------------------------------------------|');
  print('| Detalle                       | Monto               |');
  print('|-----------------------------------------------------|');
  print('| Salario del Empleado          | \$$salario         |');
  print('| Valor de Ahorro mensual       | \$$ahorroMensual   |');
  print('| Deducción por aporte a la Salud (EPS)   | \$$aporteSalud      |');
  print('| Deducción por aporte al Fondo de Pensiones   | \$$aportePensiones |');
  print('|-----------------------------------------------------|');
  print('| Total a Recibir                                    | \$$totalRecibir     |');
  print(' -------------------------------------------------------');
}
