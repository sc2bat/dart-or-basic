class Sword1201 {
  String name;
  int damage;

  Sword1201({
    required this.name,
    required this.damage,
  });
}

void main() {
  final sword = Sword1201(
    name: '불의검',
    damage: 10,
  );
}
