void main() {
  final person = new Person("Johan", 10);
  person.agree();
}

class Person {
  String name;
  int year;

  Person(this.name, this.year);

  void agree() {
    print("Hello my name is $name and I am $year years old.");
  }
}
