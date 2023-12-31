import '../interface/interfaces.dart';
import '../object.dart';
import 'zerg.dart';

class Ultralisk extends ZergUnit implements Attackable, Bionic {
  int _attackDamage;

  Ultralisk({
    required super.name,
    required super.hp,
    required super.mineral,
    required super.gas,
    required int attackDamageValue,
  }) : _attackDamage = attackDamageValue;

  @override
  void move() {
    log.info('Ultralisk $name moving');
  }

  @override
  set attackDamage(int attackDamageValue) => _attackDamage = attackDamageValue;

  @override
  int get attackDamage => _attackDamage;

  @override
  void attack(StartCraftObject scObject) {
    scObject.hp -= _attackDamage;
    log.info('Ultralisk $name attack ${scObject.name}');
    log.info('${scObject.name} get $_attackDamage point damage');
  }

  @override
  void autoHeal(int hp) {
    hp++;
    log.info('auto hp++ every second');
  }
}
