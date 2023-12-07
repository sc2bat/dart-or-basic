import 'package:my_dump_app_01/2312/12_01/game/hero_1201.dart';

class Wizard {
  String name;
  int hp;

  Wizard({
    required this.name,
    required this.hp,
  });

  void heal(Hero1201 hero) {
    hero.hp += 10;
  }
}
