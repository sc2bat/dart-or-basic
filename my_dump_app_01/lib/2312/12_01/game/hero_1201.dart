import 'dart:math';

import 'package:my_dump_app_01/12_01/game/sword_1201.dart';

// top level
int heroMoney = 100;

class Hero1201 {
  // 공통의 돈
  static int money = 100;
  static void moneyRandom() {
    Hero1201.money = Random().nextInt(1000);
  }

  String name;
  int hp;
  Sword1201? sword;

  Hero1201({
    this.name = '홍길동',
    this.hp = 100,
    this.sword,
  });

  // 메서드 : 클래스내에서 클래스를 위한 동작을 하는 함수
  // 함수 : 클래스랑 상관 없이 독자적으로 실행되는 함수
  void attack() {}

  void run() {}
}

void main() {
  print(Hero1201.money);

  final h1 = Hero1201();

  print(heroMoney);

  // final fireSword = Sword(name: 'bbb', damage: 10);
  //
  // final h1 = Hero();
  // Hero.money = 200;
  //
  // Hero(name: '배트맨');
  // Hero(hp: 200);
  // Hero(sword: fireSword);
  //
  // Hero(name: 'aaa', hp: 111);
  // Hero(hp: 111, sword: fireSword);
  //
  // final hero = Hero(name: 'aaa', hp: 10, sword: fireSword);
  //
  final person = Person();
  Hero1201.moneyRandom();
}

class Person {
  String name;

  Person({this.name = '아무개'});
}
