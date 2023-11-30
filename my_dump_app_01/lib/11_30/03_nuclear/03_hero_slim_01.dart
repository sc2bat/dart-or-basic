import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

// ignore: slash_for_doc_comments
/**
 * RPG 게임의 기본 알고리즘을 구현하는 문제입니다. 아래의 조건을 참고하여 Dart 언어를
사용하여 RPG대전을 벌이는 코드를 작성해보세요.
캐릭터 정보:
Hero: 생명력(Health): 100, 공격력(Attack): 10, 방어력(Defense): 1
Slim: 생명력(Health): 10, 공격력(Attack): 5, 방어력(Defense): 0
게임 규칙:
- 캐릭터와 슬라임이 서로 번갈아가며 공격합니다.(Slim선공)
- 각 턴마다 공격자의 공격력에서 방어자의 방어력을 뺀 값을 상대의 생명력에서
차감합니다.
- 턴이 종료될 때마다 각 캐릭터의 현재 상태(생명력, 공격력, 방어력)를 출력합니다.
- 슬라임의 생명력 0 이하가 되면 게임 종료

출력예시:
Hero vs Slime
Hero - Health: 100, Attack: 10, Defense: 1
Slime - Health: 10, Attack: 5, Defense: 0
Slime attacks!
Hero takes 4 damage.
Hero attacks the Slime!
Slime takes 5 damage.
Hero - Health: 96, Attack: 10, Defense: 1
Slime - Health: 5, Attack: 5, Defense: 0
Slime attacks!
Hero takes 4 damage.
Hero attacks the Slime!
Slime takes 5 damage.
Slime is defeated! Hero wins!
 */

class Character {
  String name;
  int health;
  int attackDamage;
  int defense;

  Character(this.name, this.health, this.attackDamage, this.defense);

  void showStatus() {
    log.info(
        '$name - Health: $health, Attack: $attackDamage, Defense: $defense');
  }

  void showInfo() {
    log.info('name $name \'s health $health');
  }

  void attack() {
    log.info('$name attack!');
  }
}

void main() {
  bool fightResult = true;
  var hero = Character('Hero', 100, 5, 1);
  var slime = Character('Slime', 10, 5, 0);

  while (fightResult) {
    hero.showStatus();
    slime.showStatus();
    calcDamage(slime, hero);
    calcDamage(hero, slime);

    if (hero.health <= 0 || slime.health <= 0) {
      fightResult = false;
    }
  }

  if (hero.health > slime.health) {
    log.info('Slime is defeated! Hero wins!');
  } else {
    log.info('Hero is defeated! Slime wins!');
  }
}

void calcDamage(var attacker, var defenser) {
  attacker.attack();
  int resultDamage = attacker.attackDamage - defenser.defense;
  defenser.health -= resultDamage;
  log.info('${defenser.name} takes $resultDamage damage.');
}
// INFO 2023-11-30 12:37:34.335 [caller info not available] Hero - Health: 100, Attack: 5, Defense: 1
// 👻 INFO 2023-11-30 12:37:34.336 [caller info not available] Slime - Health: 10, Attack: 5, Defense: 0
// 👻 INFO 2023-11-30 12:37:34.336 [caller info not available] Slime attack!
// 👻 INFO 2023-11-30 12:37:34.336 [caller info not available] Hero takes 4 damage.
// 👻 INFO 2023-11-30 12:37:34.336 [caller info not available] Hero attack!
// 👻 INFO 2023-11-30 12:37:34.337 [caller info not available] Slime takes 5 damage.
// 👻 INFO 2023-11-30 12:37:34.337 [caller info not available] Hero - Health: 96, Attack: 5, Defense: 1
// 👻 INFO 2023-11-30 12:37:34.337 [caller info not available] Slime - Health: 5, Attack: 5, Defense: 0
// 👻 INFO 2023-11-30 12:37:34.337 [caller info not available] Slime attack!
// 👻 INFO 2023-11-30 12:37:34.337 [caller info not available] Hero takes 4 damage.
// 👻 INFO 2023-11-30 12:37:34.337 [caller info not available] Hero attack!
// 👻 INFO 2023-11-30 12:37:34.337 [caller info not available] Slime takes 5 damage.
// 👻 INFO 2023-11-30 12:37:34.337 [caller info not available] Slime is defeated! Hero wins!


