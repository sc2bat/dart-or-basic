import 'package:my_dump_app_01/12_06/starcraft/interface/interfaces.dart';
import 'package:my_dump_app_01/12_06/starcraft/object.dart';
import 'package:my_dump_app_01/12_06/starcraft/terran/terran.dart';

class Marine extends TerranUnit implements Attackable, Bionic {
  int _attackDamage;

  Marine({
    required super.name,
    required super.hp,
    required super.mineral,
    required super.gas,
    required int attackDamageValue,
  }) : _attackDamage = attackDamageValue;

  @override
  void move() {
    log.info('Marine $name moving');
  }

  @override
  set attackDamage(int attackDamageValue) => _attackDamage = attackDamageValue;

  @override
  int get attackDamage => _attackDamage;

  @override
  void attack(StartCraftObject scObject) {
    scObject.hp -= _attackDamage;
    log.info('Marine $name attack ${scObject.name}');
    log.info('${scObject.name} get $_attackDamage point damage');
  }
}
