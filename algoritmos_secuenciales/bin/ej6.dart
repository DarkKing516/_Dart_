import 'dart:io';

void main(List<String> arguments) {
  print('Ingrese el valor de la compra:');
  double valorCompra = double.parse(stdin.readLineSync()!);

  double descuento = valorCompra * 0.10;
  
  double valorConDescuento = valorCompra - descuento;

  double iva = valorConDescuento * 0.19;

  double total = valorConDescuento + iva;

  print('Valor del IVA (19%): \$${iva}');
  print('Valor total de la factura: \$${total}');
}
