import 'dart:io';

void main(List<String> arguments) {
  print('Ingrese el total de la compra:');
  double totalCompra = double.parse(stdin.readLineSync()!);

  double descuento = totalCompra * 0.15;

  double montoFinal = totalCompra - descuento;

  print('El descuento aplicado es: \$$descuento');
  print('El monto final a pagar es: \$$montoFinal');
}
