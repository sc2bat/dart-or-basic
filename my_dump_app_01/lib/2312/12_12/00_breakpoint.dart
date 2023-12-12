import 'package:simple_logger/simple_logger.dart';

class DumpClass {
  String name;
  int age;

  DumpClass({
    required this.name,
    required this.age,
  });

  void showInfo() {
    log.info('name => $name, age => $age');
  }
}

final log = SimpleLogger();

void main() {
  final dump = <DumpClass>{};

  final dump01 = DumpClass(name: 'user1', age: 33);
  final dump02 = DumpClass(name: 'user2', age: 44);

  log.info(dump01);
  log.info(dump02);

  dump01.showInfo();
  dump02.showInfo();
}
