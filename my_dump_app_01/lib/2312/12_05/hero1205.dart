// 상속 (inheritance)

import '00_inheritance.dart';

class Hero1205 {
  String name;
  int hp;

  Hero1205({
    required this.name,
    required this.hp,
  });

  void attack(Slime1205 slime) {
    log.info('$name attack to ${slime.name}');
  }

  void run() {
    log.info('$name is running');
  }
}
