class Slime {
  int hp;

  Slime(this.hp);

  void attack() {}
}

void main() {
  Slime slime1 = Slime(30);
  Slime slime2 = Slime(30);

  print(slime1 == slime2);
}
