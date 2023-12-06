import 'package:my_dump_app_01/final/01_origin/character_class.dart';

class HeroClass extends CharacterClass {
  int mp;
  int attackDamage;

  HeroClass(
    super.hp,
    this.mp,
    this.attackDamage, {
    required super.name,
  });
}
