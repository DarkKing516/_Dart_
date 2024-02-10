// Inicio

// Repetir mientras haya clientes:
//     Leer monto de la venta
//     Calcular IVA: monto de la venta * tasa de IVA
//     Imprimir IVA
    
//     Calcular total a pagar: monto de la venta + IVA
//     Imprimir total a pagar
    
//     Leer cantidad con la que paga el cliente
//     Calcular cambio: cantidad del cliente - total a pagar
//     Imprimir cambio

// Fin

import 'dart:io';

void main(List<String> arguments) {
  bool continuar = true;

  while (continuar) {
    print('Ingrese el monto de la venta:');
    double montoVenta = double.parse(stdin.readLineSync()!);

    double iva = montoVenta * 0.19;
    print('El IVA es: \$$iva');

    double totalPagar = montoVenta + iva;
    print('El total a pagar es: \$$totalPagar');

    print('Ingrese la cantidad con la que paga el cliente:');
    double cantidadCliente = double.parse(stdin.readLineSync()!);

    double cambio = cantidadCliente - totalPagar;
    print('El cambio es: \$$cambio');

    print('¿Desea registrar otra venta? (Sí/No)');
    String respuesta = stdin.readLineSync()!.toLowerCase();
    if (respuesta != 'si') {
      continuar = false;
    }
  }
}
