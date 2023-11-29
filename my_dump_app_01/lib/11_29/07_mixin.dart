import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

mixin Flyable on Animal {
  void fly() {
    log.info('i can fly');
  }
}

class Animal {
  String name;

  Animal(this.name);
}

class Bird extends Animal with Flyable {
  Bird(String name) : super(name);
}

void main() {
  var bird = Bird('cham');

  bird.fly();
  //👻 INFO 2023-11-29 15:34:40.244 [caller info not available] i can fly
}
