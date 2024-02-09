void main(List<String> args) {
  print("Mayor de edad: ${mayorDeEdad(18)}");
}

bool mayorDeEdad(int edad) {
  if (edad >= 18) {
    return true;
  } else {
    return false;
  }
}
