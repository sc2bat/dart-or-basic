import 'package:my_dump_app_01/final/01_origin/character_class.dart';
import 'package:my_dump_app_01/final/03_weapon/sword_class.dart';

class HeroClass extends CharacterClass {
  int mp;
  int attackDamage;
  SwordClass? sword;

  HeroClass(
    super.hp,
    this.mp,
    this.attackDamage, {
    required super.name,
  });

  @override
  void showInfo() {
    log.info('=== show hero info ===');
    log.info('hero name => $name');
    log.info('hero hp => $hp');
    log.info('hero mp => $mp');
    log.info('hero attackDamage => $attackDamage');
    log.info('=== === ===');
  }

  @override
  void run() {
    log.info('test');
  }
}
