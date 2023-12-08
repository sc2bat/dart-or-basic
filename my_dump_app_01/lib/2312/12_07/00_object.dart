import 'package:simple_logger/simple_logger.dart';

class Hero1207 {
  String name;
  int age;

  Hero1207({
    required this.name,
    required this.age,
  });
}

void main() {
  final log = SimpleLogger();

  Object obj = Hero1207(name: 'hero1', age: 30);
  log.info(obj);
//   👻 INFO 2023-12-07 12:39:16.616 [caller info not available] Instance of 'Hero1207'

  // runtime
  dynamic dynamicVar = Hero1207(name: 'dynamicVar', age: 100);

  // compile
  Hero1207 obj01 = Hero1207(name: 'objName', age: 30);

  final heroes = <Hero1207>{};

  final h1 = Hero1207(name: 'super01', age: 10);
  final h2 = Hero1207(name: 'super01', age: 10);

  heroes.add(h1);
  log.info(heroes.length);
// 👻 INFO 2023-12-07 12:39:16.617 [caller info not available] 1
  heroes.add(h2);
  log.info(heroes.length);
// 👻 INFO 2023-12-07 12:39:16.617 [caller info not available] 2

  log.info(heroes);
// 👻 INFO 2023-12-07 12:39:16.617 [caller info not available] {Instance of 'Hero1207', Instance of 'Hero1207'}

  log.info('h1 == h2 ${h1 == h2}'); // false

  log.info(obj01.hashCode);
  log.info(obj01.name.hashCode);
//   👻 INFO 2023-12-07 17:48:35.894 [caller info not available] 189884144
// 👻 INFO 2023-12-07 17:48:35.894 [caller info not available] 174625190
}
