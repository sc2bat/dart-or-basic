import 'package:my_dump_app_01/final/01_origin/monster_class.dart';

class SlimeClass extends MonsterClass {
  SlimeClass(
    super.hp, {
    required super.name,
    required super.kind,
  });

  void getDamage() {
    log.info('enemy $name get damage');
  }
}
