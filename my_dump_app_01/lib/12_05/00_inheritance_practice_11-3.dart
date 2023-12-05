// 이 클래스를 이용해, 다음 사양을 따르는 PoisonSlime 클래스를 작성하시오
// 1. 독 슬라임(PoisonSlime) 은, 슬라임 (Slime) 중에서도 특히 “독 공격" 이 되는 것
// 2. PoisonSlime 는 아래의 코드로 인스턴스화 되는 클래스임
// 3. PoisonSlime poisonSlime = PoisonSlime(‘A’);
// 4. PoisonSlime 독 공격이 가능한 남은 횟수를 int 형 필드를 가지고 있고 초기값은 5 이다
// 5. PoisonSlime attack() 메소드가 호출되면 다음 내용의 공격을 한다
// a. 우선, “보통 슬라임과 같은 공격"을 한다
// b. “독 공격의 남은 횟수"가 0이 아니면 다음을 추가로 수행한다
// c. 화면에 “추가로, 독 포자를 살포했다!” 를 표시
// d. 용사의 HP 의 1/5에 해당하는 포인트를 용사의 HP 로부터 감소시키고, “~포인트의 데미지" 라고 표시
// e. “독 공격의 남은 횟수" 를 1 감소 시킨다

import 'package:my_dump_app_01/12_05/hero1205.dart';
import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

class Slime1205_11_3 {
  String name;
  int hp;
  Slime1205_11_3({
    required this.name,
    required this.hp,
  });

  void attack(Hero1205_11_3 hero) {}
}

class PoisonSlime1205_11_3 extends Slime1205_11_3 {
  int _poisonAttackCount;

  PoisonSlime1205_11_3({
    required super.hp,
    required super.name,
    required int poisonAttackCount,
  }) : _poisonAttackCount = poisonAttackCount;

  int get poisonAttackCount => _poisonAttackCount = poisonAttackCount;

  set poisonAttackCount(int poisonAttackCountValue) {
    if (poisonAttackCountValue < 0) {
      throw Exception('poisionAttackCountValue 는 0보다 커야합니다');
    }
    _poisonAttackCount = poisonAttackCountValue;
  }

// 1. 독 슬라임(PoisonSlime) 은, 슬라임 (Slime) 중에서도 특히 “독 공격" 이 되는 것
  @override
  void attack(Hero1205_11_3 hero) {
    // 일반공격을 독공격으로 변경
    log.info('poison attack!!');
  }
}

class Hero1205_11_3 {
  String name;
  int hp;
  int mp;

  Hero1205_11_3(
    this.mp,
    this.hp, {
    required this.name,
  });

  void attack(Slime1205_11_3 slime) {
    log.info('attack $slime.name');
  }
}

void main() {
  log.info('test');

  final hero01 = Hero1205_11_3(name: 'hero01', 1000);

  // 3. PoisonSlime poisonSlime = PoisonSlime(‘A’);
  final poisonSlime01 =
      PoisonSlime1205_11_3(name: 'pois', hp: 100, poisonAttackCount: 5);

  poisonSlime01.attack(hero01);
}
