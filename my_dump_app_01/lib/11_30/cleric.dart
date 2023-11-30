// ignore_for_file: slash_for_doc_comments

import 'dart:math';

import 'package:simple_logger/simple_logger.dart';

/** 연습문제 1-3
 * 성직자는 “셀프 에이드" 라는 마법을 사용할 수 있고, MP를 5소비하는 것으로 자신의 HP 를 최대 HP 까지 회복할 수 있다.
연습 1-2 에 선언한 Cleric 클래스에 “selfAid()” 메소드를 추가 하시오.
또한, 이 메소드는 인수가 없고, 리턴 값도 없다.

 * 
 */

/** 연습문제 1-4
 * 성직자는 “기도하기" (pray) 라는 행동을 취할 수 있고, 자신의 MP를 회복한다.
회복량은 기도한 시간(초)에 랜덤하게 0 ~ 2포인트의 보정을 한 양이다 
(3초 기도하면 회복량은 3 ~ 5 포인트). 
단, 최대 MP 보다 더 회복하는 것은 불가능 하다.
연습 1-3에서 선언한 Cleric 클래스에 “pray()” 메소드를 추가하시오.
이 메소드는 인수에 “기도할 시간(초)"를 지정할 수 있고, 리턴 값은 “실제로 회복된 MP 양" 을 반환한다.

 */

final log = SimpleLogger();

class Cleric {
  String name;
  int hp;
  int mp;
  final int maxHp = 50;
  final int maxMp = 10;
  final int healMp = 5;

  Cleric(this.name, this.hp, this.mp);

  void showInfo() {
    log.info('$name 현재 체력 : $hp, 현재 mp : $mp');
  }

  void getDamage() {
    log.info('피해를 입어 체력이 감소합니다.');
    hp = 30;
    showInfo();
  }

  void selfAid() {
    if (mp >= healMp) {
      mp -= healMp;
      hp = maxHp;
      log.info('mp : $healMp 를 사용하여 최대 체력으로 회복합니다.');
      showInfo();
    } else {
      log.info('mp : $mp mp 가 부족합니다.');
    }
  }

  int pray(int praySec) {
    var ranVal = Random().nextInt(3);
    log.info('$praySec 초 동안 기도를 하여 ${praySec * ranVal} 만큼 체력을 회복합니다.');
    return praySec * ranVal;
  }
}

void main() {
  final Cleric cleric1 = Cleric('user1', 30, 10);
  cleric1.showInfo();

  cleric1.selfAid();
  cleric1.getDamage();
  cleric1.hp = cleric1.hp + cleric1.pray(5);
  cleric1.showInfo();
}

/**
 * 👻 INFO 2023-11-30 16:50:08.321 [caller info not available] user1 현재 체력 : 30, 현재 mp : 10
👻 INFO 2023-11-30 16:50:08.322 [caller info not available] mp : 5 를 사용하여 최대 체력으로 회복합니다.
👻 INFO 2023-11-30 16:50:08.322 [caller info not available] user1 현재 체력 : 50, 현재 mp : 5
👻 INFO 2023-11-30 16:50:08.322 [caller info not available] 피해를 입어 체력이 감소합니다.
👻 INFO 2023-11-30 16:50:08.322 [caller info not available] user1 현재 체력 : 30, 현재 mp : 5
👻 INFO 2023-11-30 16:50:08.322 [caller info not available] 5 초 동안 기도를 하여 10 만큼 체력을 회복합니다.
👻 INFO 2023-11-30 16:50:08.322 [caller info not available] user1 현재 체력 : 40, 현재 mp : 5
 * 
 */