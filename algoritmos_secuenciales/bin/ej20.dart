import 'dart:io';

void main() {
  print('Ingrese el precio de compra unitario del producto:');
  double precioUnitario = double.parse(stdin.readLineSync()!);

  print('Ingrese la cantidad de compra del producto:');
  int cantidadCompra = int.parse(stdin.readLineSync()!);

  print('Ingrese el descuento (%):');
  double descuentoPorcentaje = double.parse(stdin.readLineSync()!);

  double subtotal = precioUnitario * cantidadCompra;

  double descuento = (subtotal * descuentoPorcentaje) / 100;

  double iva = subtotal * 0.19;

  double precioNeto = subtotal - descuento + iva;

  print('Subtotal: \$$subtotal');
  print('Monto del IVA: \$$iva');
  print('Precio neto: \$$precioNeto');
}
