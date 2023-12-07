import '../interface/interfaces.dart';
import '../object.dart';

abstract class ZergUnit extends Unit implements Race, ZergRecovery {
  ZergUnit({
    required super.name,
    required super.hp,
    required super.mineral,
    required super.gas,
  });
}

abstract class ZergStructure extends Structure implements Race, ZergRecovery {
  ZergStructure({
    required super.name,
    required super.hp,
    required super.mineral,
    required super.gas,
    required super.buildingPlating,
  });
}
