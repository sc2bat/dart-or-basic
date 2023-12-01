import 'package:my_dump_app_01/12_01/hero_1201.dart';
import 'package:my_dump_app_01/12_01/sword_1201.dart';
import 'package:my_dump_app_01/12_01/wizard_1201.dart';
import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

void main() {
  final p1 = Person();

  final fireSword = Sword1201(name: 'fireSword', damage: 10);

  final hero1 = Hero1201(name: '홍길동', hp: 100);
  final hero2 = hero1;

  final wizard1 = Wizard1201(name: 'wizard1', hp: 100);

  hero2.hp = 200;

  log.info(hero1.hp);
  log.info(hero2.hp);
}

class Person {}
