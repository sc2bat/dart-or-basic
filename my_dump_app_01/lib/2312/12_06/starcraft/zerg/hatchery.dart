import 'zerg.dart';

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
