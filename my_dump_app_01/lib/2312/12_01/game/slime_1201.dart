class Slime1201 {
  int hp;
  final int level = 10;

  Slime1201(this.hp);

  void attack() {}
}

void main() {
  Slime1201 slime1 = Slime1201(100); // 1
  Slime1201 slime2 = Slime1201(100); // 2

  // true: O, false: X
  print(slime1 == slime2);
}
