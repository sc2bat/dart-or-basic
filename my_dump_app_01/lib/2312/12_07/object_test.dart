class DumpClass1207 {
  String name;
  int age;

  DumpClass1207({
    required this.name,
    required this.age,
  });

  @override
  String toString() {
    return 'toString test $name, $age';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DumpClass1207 && runtimeType == other.runtimeType;

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}

void main() {
  final dump01 = DumpClass1207(name: 'dump01', age: 30300);

  print(dump01.toString());

  // flutter: toString test dump01, 30300
}
