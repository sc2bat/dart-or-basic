import 'package:my_dump_app_01/2312/final/02_job/hero_class.dart';

class SuperHeroClass extends HeroClass {
  SuperHeroClass(
    super.hp,
    super.mp,
    super.attackDamage, {
    required super.name,
  });

  @override
  void run() {
    log.info('superHero $name is running');
  }

  // @override
  // void attack(SlimeClass slime) {
  //   log.info('superhero attack');
  // }
}
