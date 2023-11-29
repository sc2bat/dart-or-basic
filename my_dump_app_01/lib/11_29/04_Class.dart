import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

class Person {
  String name;
  int age;
  Person(this.name, this.age);

  void printInfo() {
    log.info('name ==> $name, age $age');
  }
}

void main() {
  var person = Person('John', 30);

  person.printInfo();
  //  INFO 2023-11-29 14:43:32.651 [caller info not available] name ==> John, age 30
}
