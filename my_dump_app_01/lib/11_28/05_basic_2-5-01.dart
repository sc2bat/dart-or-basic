import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

//다음의 함수가 실행될 수 있도록 Class Person을 작성하시오
void main() {
  var person = Person('John Doe', 30);
  person.printInfo();
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void printInfo() {
    print("name $name, age $age");
  }
}
