// 추상클래스 (abstract class)
// 상속의 재료로 사용되는 클래스
// 상세 부분이 미정의된 클래스

import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

abstract class Character1205 {
  String name;
  int hp;

  Character1205(
    this.name,
    this.hp,
  );

  void run() {
    log.info('$name is running');
  }

  void attack() {
    log.info('$name\'s attack!!');
    int attackDamage = 10;
    hp -= attackDamage;
    log.info('enemy get $attackDamage point damage');
  }
}

void main() {
  // final character01 = Character1205('user1', 300); // abstract class can't instance
}
