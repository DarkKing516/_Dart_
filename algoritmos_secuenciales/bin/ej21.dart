import 'dart:io';

void main() {
  print('Ingrese el año de nacimiento:');
  int anoNacimiento = int.parse(stdin.readLineSync()!);

  print('Ingrese el nombre:');
  String nombre = stdin.readLineSync()!;

  print('Ingrese la dirección:');
  String direccion = stdin.readLineSync()!;

  // int anoActual = 2024;
  int anoActual = DateTime.now().year;
  int edad = anoActual - anoNacimiento;

  print('Nombre: $nombre');
  print('Dirección: $direccion');
  print('Edad: $edad años');
}
