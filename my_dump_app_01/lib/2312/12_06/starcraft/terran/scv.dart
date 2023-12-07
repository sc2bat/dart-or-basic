import '../interface/interfaces.dart';
import '../object.dart';
import 'terran.dart';

class SCV extends TerranUnit
    implements GatherResource, Attackable, Bionic, Mechanic {
  int _attackDamage;

  SCV({
    required super.name,
    required super.hp,
    required super.mineral,
    required super.gas,
    required int attackDamageValue,
  }) : _attackDamage = attackDamageValue;

  @override
  void move() {
    log.info('SCV $name moving');
  }

  @override
  void gatherGas() {
    log.info('SCV $name gathering Gas');
  }

  @override
  void gatherMineral() {
    log.info('SCV $name gathering mineral');
  }

  @override
  set attackDamage(int attackDamageValue) => _attackDamage = attackDamageValue;

  @override
  int get attackDamage => _attackDamage;

  @override
  void attack(StartCraftObject scObject) {
    scObject.hp -= _attackDamage;
    log.info('SCV $name attack ${scObject.name}');
    log.info('${scObject.name} get $_attackDamage point damage');
  }

  void repair(Mechanic mechanicUnit) {
    log.info('SCV $name repair $mechanicUnit');
  }
}
