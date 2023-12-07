import 'package:my_dump_app_01/12_06/starcraft/interface/interfaces.dart';
import 'package:my_dump_app_01/12_06/starcraft/object.dart';

abstract class TerranUnit extends Unit implements Race, Movable {
  TerranUnit({
    required super.name,
    required super.hp,
    required super.mineral,
    required super.gas,
  });
}

abstract class TerranStructure extends Structure implements Race {
  TerranStructure({
    required super.name,
    required super.hp,
    required super.mineral,
    required super.gas,
    required super.buildingPlating,
  });
}
