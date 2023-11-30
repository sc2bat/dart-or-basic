// ignore: slash_for_doc_comments
import 'package:simple_logger/simple_logger.dart';

/**
 * 성직자는 “셀프 에이드" 라는 마법을 사용할 수 있고, MP를 5소비하는 것으로 자신의 HP 를 최대 HP 까지 회복할 수 있다.
연습 1-2 에 선언한 Cleric 클래스에 “selfAid()” 메소드를 추가 하시오.
또한, 이 메소드는 인수가 없고, 리턴 값도 없다.

 * 
 */

final log = SimpleLogger();

class Cleric {
  String name;
  int hp = 50;
  int mp = 10;
  final int maxHp = 50;
  final int maxMp = 10;
  final int healMp = 5;

  Cleric(this.name, this.hp, this.mp);

  void selfAid() {
    if (mp >= healMp) {
      mp -= healMp;
      hp = maxHp;
      log.info('mp : $healMp 를 사용하여 최대 체력으로 회복합니다.');
    } else {
      log.info('mp : $mp mp 가 부족합니다.');
    }
  }
}

void main() {}
