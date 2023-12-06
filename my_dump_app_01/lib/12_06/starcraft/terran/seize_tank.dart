import 'package:my_dump_app_01/12_06/starcraft/interface/interfaces.dart';
import 'package:my_dump_app_01/12_06/starcraft/object.dart';
import 'package:my_dump_app_01/12_06/starcraft/terran/terran.dart';

class SeizeTank extends TerranUnit implements Attackable, Mechanic {
  int _attackDamage;

  SeizeTank({
    required super.name,
    required super.hp,
    required super.mineral,
    required super.gas,
    required int attackDamageValue,
  }) : _attackDamage = attackDamageValue;

  @override
  void move() {
    log.info('SeizeTank $name moving');
  }

  @override
  set attackDamage(int attackDamageValue) => _attackDamage = attackDamageValue;

  @override
  int get attackDamage => _attackDamage;

  @override
  void attack(StartCraftObject scObject) {
    scObject.hp -= _attackDamage;
    log.info('SeizeTank $name attack ${scObject.name}');
    log.info('${scObject.name} get $_attackDamage point damage');
  }

  void activateSiegeMode() {
    int resultAttackDamage = _attackDamage * 2;
    log.info(
        'SeizeTank $name increase attackDamage $_attackDamage to $resultAttackDamage');
    _attackDamage = resultAttackDamage;
  }

  void deactivateSiegeMode() {
    int resultAttackDamage = _attackDamage ~/ 2;
    log.info(
        'SeizeTank $name decrease attackDamage $_attackDamage to $resultAttackDamage');
    _attackDamage = resultAttackDamage;
  }
}
