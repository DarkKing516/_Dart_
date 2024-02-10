import 'dart:io';

void main(List<String> arguments) {
  double nota1, nota2, nota3;

  do {
    print('Ingrese la primera nota:');
    nota1 = double.tryParse(stdin.readLineSync()!) ?? -1;
    if (nota1 < 0 || nota1 > 5.0) {
      print('La nota debe estar entre 0 y 5.0');
    }
  } while (nota1 < 0 || nota1 > 5.0);

  do {
    print('Ingrese la segunda nota:');
    nota2 = double.tryParse(stdin.readLineSync()!) ?? -1;
    if (nota2 < 0 || nota2 > 5.0) {
      print('La nota debe estar entre 0 y 5.0');
    }
  } while (nota2 < 0 || nota2 > 5.0);

  do {
    print('Ingrese la tercera nota:');
    nota3 = double.tryParse(stdin.readLineSync()!) ?? -1;
    if (nota3 < 0 || nota3 > 5.0) {
      print('La nota debe estar entre 0 y 5.0');
    }
  } while (nota3 < 0 || nota3 > 5.0);

  double definitiva = (nota1 + nota2 + nota3) / 3;

  print('La nota definitiva de la asignatura es: $definitiva');

  if (definitiva >= 3.5) {
    print('Aprovado');
  } else {
    print('Desarpobado');
  }
}
