import 'package:simple_logger/simple_logger.dart';

class CharacterClass {
  final log = SimpleLogger();

  String name;
  int hp;

  CharacterClass(
    this.hp, {
    required this.name,
  });

  void showInfo() {
    log.info('character $name hp => $hp ');
  }

  void run() {
    log.info('$name is running');
  }

  void attack() {
    log.info('$name \'s attack ');
  }
}
