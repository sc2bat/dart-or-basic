import '../interface/interfaces.dart';
import '../object.dart';
import 'protoss.dart';

class Dragoon extends ProtossUnit implements Attackable, Mechanic {
  int _attackDamage;

  Dragoon({
    required super.name,
    required super.shield,
    required super.hp,
    required super.mineral,
    required super.gas,
    required int attackDamageValue,
  }) : _attackDamage = attackDamageValue;

  @override
  void move() {
    log.info('Dragoon $name moving');
  }

  @override
  set attackDamage(int attackDamageValue) => _attackDamage = attackDamageValue;

  @override
  int get attackDamage => _attackDamage;

  @override
  void attack(StartCraftObject scObject) {
    scObject.hp -= _attackDamage;
    log.info('Dragoon $name attack ${scObject.name}');
    log.info('${scObject.name} get $_attackDamage point damage');
  }

  @override
  void autoRechargeShield() {
    shield++;
    log.info('shield++ every second');
  }
}
