import '../interface/interfaces.dart';
import '../object.dart';
import 'protoss.dart';

class Probe extends ProtossUnit
    implements GatherResource, Attackable, Mechanic {
  int _attackDamage;

  Probe({
    required super.name,
    required super.shield,
    required super.hp,
    required super.mineral,
    required super.gas,
    required int attackDamageValue,
  }) : _attackDamage = attackDamageValue;

  @override
  void move() {
    log.info('Probe $name moving');
  }

  @override
  void gatherGas() {
    log.info('Probe $name gathering Gas');
  }

  @override
  void gatherMineral() {
    log.info('Probe $name gathering mineral');
  }

  @override
  set attackDamage(int attackDamageValue) => _attackDamage = attackDamageValue;

  @override
  int get attackDamage => _attackDamage;

  @override
  void attack(StartCraftObject scObject) {
    scObject.hp -= _attackDamage;
    log.info('Probe $name attack ${scObject.name}');
    log.info('${scObject.name} get $_attackDamage point damage');
  }

  @override
  void autoRechargeShield() {
    shield++;
    log.info('shield++ every second');
  }
}
