import '../interface/interfaces.dart';
import '../object.dart';
import 'protoss.dart';

class Zealot extends ProtossUnit implements Attackable, Bionic {
  int _attackDamage;

  Zealot({
    required super.name,
    required super.shield,
    required super.hp,
    required super.mineral,
    required super.gas,
    required int attackDamageValue,
  }) : _attackDamage = attackDamageValue;

  @override
  void move() {
    log.info('Zealot $name moving');
  }

  @override
  set attackDamage(int attackDamageValue) => _attackDamage = attackDamageValue;

  @override
  int get attackDamage => _attackDamage;

  @override
  void attack(StartCraftObject scObject) {
    scObject.hp -= _attackDamage;
    log.info('Zealot $name attack ${scObject.name}');
    log.info('${scObject.name} get $_attackDamage point damage');
  }

  @override
  void autoRechargeShield() {
    shield++;
    log.info('shield++ every second');
  }
}
