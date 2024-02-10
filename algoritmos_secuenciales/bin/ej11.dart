import 'dart:io';

void main(List<String> arguments) {
  double nota1, nota2, nota3, examenFinal, trabajoFinal;

  do {
    print('Ingrese la calificación del primer parcial:');
    nota1 = double.tryParse(stdin.readLineSync()!) ?? -1;
    if (nota1 < 0 || nota1 > 5.0) {
      print('La nota debe estar entre 0 y 5.0');
    }
  } while (nota1 < 0 || nota1 > 5.0);

  do {
    print('Ingrese la calificación del segundo parcial:');
    nota2 = double.tryParse(stdin.readLineSync()!) ?? -1;
    if (nota2 < 0 || nota2 > 5.0) {
      print('La nota debe estar entre 0 y 5.0');
    }
  } while (nota2 < 0 || nota2 > 5.0);

  do {
    print('Ingrese la calificación del tercer parcial:');
    nota3 = double.tryParse(stdin.readLineSync()!) ?? -1;
    if (nota3 < 0 || nota3 > 5.0) {
      print('La nota debe estar entre 0 y 5.0');
    }
  } while (nota3 < 0 || nota3 > 5.0);

  do {
    print('Ingrese la calificación del examen final:');
    examenFinal = double.tryParse(stdin.readLineSync()!) ?? -1;
    if (examenFinal < 0 || examenFinal > 5.0) {
      print('La nota debe estar entre 0 y 5.0');
    }
  } while (examenFinal < 0 || examenFinal > 5.0);

  do {
    print('Ingrese la calificación del trabajo final:');
    trabajoFinal = double.tryParse(stdin.readLineSync()!) ?? -1;
    if (trabajoFinal < 0 || trabajoFinal > 5.0) {
      print('La nota debe estar entre 0 y 5.0');
    }
  } while (trabajoFinal < 0 || trabajoFinal > 5.0);

  double promedioParciales = (nota1 + nota2 + nota3) / 3;
  double calificacionFinal = (promedioParciales * 0.55) + (examenFinal * 0.30) + (trabajoFinal * 0.15);

  print('La calificación final del alumno en la materia de Algoritmos es: $calificacionFinal');
}
