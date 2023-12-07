import 'package:my_dump_app_01/12_06/starcraft/interface/interfaces.dart';
import 'package:my_dump_app_01/12_06/starcraft/object.dart';

abstract class ProtossUnit extends Unit implements Race, Movable, Shield {
  @override
  int shield;

  ProtossUnit({
    required super.name,
    required this.shield,
    required super.hp,
    required super.mineral,
    required super.gas,
  });
}

abstract class ProtossStructure extends Structure implements Race, Shield {
  @override
  int shield;

  ProtossStructure({
    required super.name,
    required this.shield,
    required super.hp,
    required super.mineral,
    required super.gas,
    required super.buildingPlating,
  });
}
