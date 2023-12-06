class Wheel {}

abstract class Vehicle {
  String name;
  int money;
  Wheel wheel;

  Vehicle({
    required this.name,
    required this.money,
    required this.wheel,
  });
}

abstract interface class Drivable {
  void drive() {
    print('Driving~~');
  }
}

class Bus extends Vehicle implements Drivable {
  Bus({
    required super.name,
    required super.money,
    required super.wheel,
  });

  @override
  void drive() {
    print('Driving Busss ~~~');
  }
}
