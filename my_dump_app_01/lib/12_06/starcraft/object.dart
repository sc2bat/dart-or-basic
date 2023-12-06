import 'package:my_dump_app_01/12_06/starcraft/interface/interfaces.dart';
import 'package:simple_logger/simple_logger.dart';

abstract class StartCraftObject {
  final log = SimpleLogger();

  String name;
  int hp;
  int mineral;
  int gas;

  StartCraftObject({
    required this.name,
    required this.hp,
    required this.mineral,
    required this.gas,
  });
}

abstract class Unit extends StartCraftObject implements Movable {
  Unit({
    required super.name,
    required super.hp,
    required super.mineral,
    required super.gas,
  });
}

abstract class Structure extends StartCraftObject {
  int buildingPlating;

  Structure({
    required super.name,
    required super.hp,
    required super.mineral,
    required super.gas,
    required this.buildingPlating,
  });
}
