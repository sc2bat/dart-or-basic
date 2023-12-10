import 'package:simple_logger/simple_logger.dart';

class MonsterClass {
  final log = SimpleLogger();

  String name;
  String kind;
  int hp;

  MonsterClass(
    this.hp, {
    required this.name,
    required this.kind,
  });

  void showInfo() {
    log.info('monster $kind \'s $name hp => $hp ');
  }
}
