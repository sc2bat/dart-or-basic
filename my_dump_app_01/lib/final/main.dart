import 'package:my_dump_app_01/final/01_origin/character_class.dart';
import 'package:my_dump_app_01/final/02_job/hero_class.dart';
import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

void main() {
  var char1 = CharacterClass(name: 'char1', 100);
  char1.run();
  char1.attack();

  // var hero01 = HeroClass(name: 'user01');
  // hero01.showInfo();
}
