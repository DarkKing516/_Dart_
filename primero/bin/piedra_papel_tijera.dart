import 'dart:math';
import 'dart:io';

void main() {
  int jugar = 1;
  while (jugar == 1) {
    print('Digite una opción: \n 1. Piedra \n 2. Papel \n 3. Tijera');
  var opcion = stdin.readLineSync();

  // Intentar convertir la entrada a un entero
  try {
    var opcionInt = int.parse(opcion!);
    print("Su variable es entera: $opcionInt");
    if (opcionInt > 1 && opcionInt > 3) {
      print("su opcion no es valida");
    } else {
      var opcionPc = Random().nextInt(3) + 1;

    var pcTexto = (opcionPc == 1) ? 'Piedra' : (opcionPc == 2) ? 'Papel': (opcionPc == 3) ? 'Tijera': 'Digite una opcion valida';


      print("PC: $pcTexto");

      if (opcionInt == 1 && opcionPc == 2) {
        print("Perdiste!");
      }else if(opcionInt == opcionPc){
        print("Empate!");
      }else if(opcionInt == 2 && opcionPc == 3){
        print("Perdiste!");
      }else if(opcionInt == 3 && opcionPc == 1){
        print("Perdiste!");
      }else{
        print("Ganaste!");
      }
    }
  } catch (e) {
    print("$opcion no es una opcion valida");
  }
  print("Quieres seeguir jugando? SI: 1, NO:2");
  jugar = int.parse(stdin.readLineSync()!);
  }

  // int num1 = int.parse(stdin.readLineSync()!);
}