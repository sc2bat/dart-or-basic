// 상속 (inheritance)
import 'package:my_dump_app_01/12_05/super_hero1205.dart';
import 'package:simple_logger/simple_logger.dart';

import 'hero1205.dart';

final log = SimpleLogger();

class Slime1205 {
  String name;
  int hp;

  Slime1205(
    this.name,
    this.hp,
  );
}

void main() {
  int num1 = 10;
  int? num2;

  if (num2 != null) {
    num1 = num2;
  }

  int num3;

  final hero = Hero1205(name: 'hero1', hp: 300);

  hero.run();

  final superHero1 = SuperHero1205(name: 'superhero1', hp: 1000);
  log.info(superHero1.isFlying);
  superHero1.run();

  final slime01 = Slime1205('slime01', 100);

  hero.attack(slime01);
  superHero1.attack(slime01);

//   👻 INFO 2023-12-05 11:34:33.109 [caller info not available] hero1 is running
// 👻 INFO 2023-12-05 11:34:33.110 [caller info not available] false
// 👻 INFO 2023-12-05 11:34:33.110 [caller info not available] override running
// 👻 INFO 2023-12-05 11:34:33.110 [caller info not available] hero1 attack to slime01
// 👻 INFO 2023-12-05 11:34:33.110 [caller info not available] super hero attack slime01
}
