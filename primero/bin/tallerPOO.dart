import 'dart:io';

void main() {
  Producto boligrafoAzul =
      Producto(codigo: 'PD3', nombre: 'Bolígrafo azul', precio: 1.5);
  Producto relojPulsera =
      Producto(codigo: 'PD4', nombre: 'Reloj de pulsera', precio: 99.99);
  Producto mochilaEscolar =
      Producto(codigo: 'PD5', nombre: 'Mochila escolar', precio: 19.99);

  Map<String, Producto> productosDisponibles = {
    'PD3': boligrafoAzul,
    'PD4': relojPulsera,
    'PD5': mochilaEscolar,
  };

  Carrito carrito = Carrito();

  bool selectProd = true;
  while (selectProd) {
    print("Elija uno de los siguientes productos:");

    productosDisponibles.forEach((codigo, producto) {
      print(
          'Código: $codigo, Nombre: ${producto.nombre}, Precio: ${producto.precio}');
    });

    var opcion = stdin.readLineSync();

    if (productosDisponibles.containsKey(opcion)) {
      var productoSeleccionado = productosDisponibles[opcion];
      print(
          "¿Seguro que quieres añadir ${productoSeleccionado!.nombre} al Carrito? S/N");
      var confirmCar = stdin.readLineSync();
      if (confirmCar == "s" || confirmCar == "S") {
        carrito.agregarProducto(productoSeleccionado!);
        print("${productoSeleccionado.nombre} añadido al Carrito.");
        print("¿Desea añadir mas productos? S/N");
        confirmCar = stdin.readLineSync();
        if (confirmCar == "s" || confirmCar == "S") {
          selectProd = true;
        } else {
          selectProd = false;
        }
      } else {
        print("No se añadió ${productoSeleccionado.nombre} al Carrito.");
        print("¿Desea añadir mas productos? S/N");
        confirmCar = stdin.readLineSync();
        if (confirmCar == "s" || confirmCar == "S") {
          selectProd = true;
        } else {
          selectProd = false;
        }
      }
    } else {
      print(
          "La opción seleccionada no es válida. Por favor, elija un código de producto válido.");
    }
  }

  print("Productos en el Carrito:");
  for (var producto in carrito.productos) {
    print('Nombre: ${producto.nombre}, Precio: ${producto.precio}');
  }

  double total = carrito.calcularTotal();

  print("El valor total de la compra es: \$${total.toStringAsFixed(2)}");
}

class Producto {
  String codigo;
  String nombre;
  double precio;

  Producto({required this.codigo, required this.nombre, required this.precio});
}

class Carrito {
  List<Producto> _productos = [];

  void agregarProducto(Producto producto) {
    _productos.add(producto);
  }

  double calcularTotal() {
    double total = 0;
    for (var producto in _productos) {
      total += producto.precio;
    }
    return total;
  }

  List<Producto> get productos => _productos;
}
