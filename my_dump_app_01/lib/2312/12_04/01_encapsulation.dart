// 캡슐화 encapsulation

// 이제 클래스나 인스턴스를 이용하여 현실세계를 객체 지향 프로그램으로 자유롭게 개발 할 수 있게 되었다.
// 하지만, 실수로 속성을 덮어 쓰거나, 잘못된 조작 하는 등의 휴먼 에러 (human error) 를 완전히 없앨 수는 없다.
// 그래서 Dart 에는 실수를 미연에 방지하는 “캡슐화" 라는 방법이 있다.

class Hero1204 {
  // access 제어가 되어있지 않은 프로그램
  static int money = 100;
  String name;
  int hp;
  Sword1204? sword;

  Hero1204(
    this.name,
    this.hp,
    this.sword,
  );

  void bye() {
    print('$name bye');
  }

  void die() {
    print('$name die');
  }

  void attack(Slime1204 slime) {
    print('$name 이 $slime 을 공격함');
    print('$slime\'s counter attack');
    hp -= 10;
    if (hp <= 0) {
      die();
    }
  }
}

class Sword1204 {
  String name;
  int power;

  Sword1204(
    this.name,
    this.power,
  );
}

class Slime1204 {
  String name;
  int hp;
  int mp;

  Slime1204(
    this.name,
    this.hp,
    this.mp,
  );
}

void main() {}
