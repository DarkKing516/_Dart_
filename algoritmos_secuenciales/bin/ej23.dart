import 'dart:io';

void main() {
  // Tiempo que tarda en subir una montaña de 7 metros (en horas)
  double tiempoBase = 5;

  print('Ingrese la altura de la montaña (en metros):');
  double alturaMontana = double.parse(stdin.readLineSync()!);

  double tiempo = tiempoBase * (alturaMontana / 7);

  print('El escalador tardará aproximadamente $tiempo horas en subir una montaña de $alturaMontana metros.');
}
