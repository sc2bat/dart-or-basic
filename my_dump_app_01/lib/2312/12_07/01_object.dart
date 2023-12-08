import 'package:simple_logger/simple_logger.dart';

void main() {
  final log = SimpleLogger();

  //
  log.info(Person('a').hashCode);
  log.info(Person('a').hashCode);
  log.info(Person('a').hashCode);
  log.info(Person('a').hashCode);
  log.info(Person('a').hashCode);

  final p1 = Person('a');
  final p2 = Person('a');

  log.info(p1 ==
      p2); // 👻 INFO 2023-12-07 17:52:48.586 [caller info not available] true
}

class Person {
  String name;

  Person(this.name);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person && runtimeType == other.runtimeType && name == other.name;

  @override
  int get hashCode => name.hashCode;
}
