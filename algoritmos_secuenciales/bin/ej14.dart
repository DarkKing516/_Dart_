import 'dart:io';

void main(List<String> arguments) {
  double precioArticulo1, precioArticulo2, precioArticulo3, precioArticulo4;

  int cantidadArticulo1,
      cantidadArticulo2,
      cantidadArticulo3,
      cantidadArticulo4;

  print('Ingrese el precio del artículo 1:');
  precioArticulo1 = double.parse(stdin.readLineSync()!);
  print('Ingrese la cantidad del artículo 1:');
  cantidadArticulo1 = int.parse(stdin.readLineSync()!);

  print('Ingrese el precio del artículo 2:');
  precioArticulo2 = double.parse(stdin.readLineSync()!);
  print('Ingrese la cantidad del artículo 2:');
  cantidadArticulo2 = int.parse(stdin.readLineSync()!);

  print('Ingrese el precio del artículo 3:');
  precioArticulo3 = double.parse(stdin.readLineSync()!);
  print('Ingrese la cantidad del artículo 3:');
  cantidadArticulo3 = int.parse(stdin.readLineSync()!);

  print('Ingrese el precio del artículo 4:');
  precioArticulo4 = double.parse(stdin.readLineSync()!);
  print('Ingrese la cantidad del artículo 4:');
  cantidadArticulo4 = int.parse(stdin.readLineSync()!);

  double subtotal = (precioArticulo1 * cantidadArticulo1) +
      (precioArticulo2 * cantidadArticulo2) +
      (precioArticulo3 * cantidadArticulo3) +
      (precioArticulo4 * cantidadArticulo4);

  double iva = subtotal * 0.19;

  double total = subtotal + iva;

  print('--- Factura ---');
  print('Artículo 1: \$${precioArticulo1 * cantidadArticulo1}');
  print('Artículo 2: \$${precioArticulo2 * cantidadArticulo2}');
  print('Artículo 3: \$${precioArticulo3 * cantidadArticulo3}');
  print('Artículo 4: \$${precioArticulo4 * cantidadArticulo4}');
  print('Subtotal: \$$subtotal');
  print('IVA (19%): \$$iva');
  print('Total: \$$total');
}
