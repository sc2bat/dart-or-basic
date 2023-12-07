import 'package:my_dump_app_01/12_06/starcraft/zerg/zerg.dart';

class Hatchery extends ZergStructure {
  Hatchery({
    required super.name,
    required super.hp,
    required super.mineral,
    required super.gas,
    required super.buildingPlating,
  });

  @override
  void autoHeal(int hp) {
    hp++;
    log.info('auto hp++ every second');
  }
}
