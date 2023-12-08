import 'package:simple_logger/simple_logger.dart';

void main() {
  final log = SimpleLogger();

  log.info(Person(name: 'a', age: 10) == Person(name: 'a', age: 10));

  final p1 = Person(name: 'a', age: 10);

  final clone = Person(name: p1.name, age: p1.age);

  log.info(p1 == clone);

  final p2 = p1.copyWith();
  log.info(p1 == p2);

  final p3 = p1.copyWith(name: 'b');
  log.info(p3);

  final p4 = p1.copyWith(age: 50);
  log.info(p4);

  final p5 = p1.copyWith(name: 'c', age: 90);
  log.info(p5);

// 👻 INFO 2023-12-07 18:23:56.603 [caller info not available] true
// 👻 INFO 2023-12-07 18:23:56.603 [caller info not available] Person{name: b, age: 10}
// 👻 INFO 2023-12-07 18:23:56.603 [caller info not available] Person{name: a, age: 50}
// 👻 INFO 2023-12-07 18:23:56.604 [caller info not available] Person{name: c, age: 90}
}

class Person {
  String name;
  int age;

  Person({
    required this.name,
    required this.age,
  });

  Person copyWith({
    String? name,
    int? age,
  }) {
    return Person(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          age == other.age;

  @override
  int get hashCode => name.hashCode ^ age.hashCode;

  @override
  String toString() {
    return 'Person{name: $name, age: $age}';
  }
}
