import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

class Person {
  String name;
  int age;
  Person(this.name, this.age);

  // void speekName();
  //'speekName' must have a method body because 'Person' isn't abstract.
  // Try making 'Person' abstract, or adding a body to 'speekName'.
}

abstract class IronMan {
  String model;
  int powerLevel;

  IronMan(this.model, this.powerLevel);

  void fly();

  void shootPowerLevel();

  void damage();
}

class IronManMk50 extends IronMan {
  String model;
  int suitPower;

  IronManMk50(this.model, this.suitPower) : super(model, suitPower);

  @override
  void fly() {
    log.info('$model is flying');
  }

  @override
  void shootPowerLevel() {
    log.info('$model is shoot $powerLevel');
  }

  @override
  void damage() {
    log.info('$model is make huge damage');
  }
}

void main() {
  var mk50 = IronManMk50('mk50', 10000);

  mk50.fly();
  mk50.shootPowerLevel();
  mk50.damage();

//   👻 INFO 2023-11-29 15:26:48.355 [caller info not available] mk50 is flying
// 👻 INFO 2023-11-29 15:26:48.356 [caller info not available] mk50 is shoot 10000
// 👻 INFO 2023-11-29 15:26:48.356 [caller info not available] mk50 is make huge damage
}
