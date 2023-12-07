// 상속 (inheritance)

import '00_inheritance.dart';
import 'hero1205.dart';

class SuperHero1205 extends Hero1205 {
  bool _isFlying = false;

  bool get isFlying => _isFlying;

  set isFlying(bool flyVal) {
    _isFlying = flyVal;

    if (flyVal) {
      log.info('$name is flying');
    } else {
      log.info('$name do not flying');
    }
  }

  SuperHero1205({
    required super.name,
    required super.hp,
  });

  @override
  void run() {
    log.info('override running');
  }

  @override
  void attack(Slime1205 slime) {
    log.info('super hero attack ${slime.name}');
  }
}
