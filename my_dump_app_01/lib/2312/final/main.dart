import 'package:simple_logger/simple_logger.dart';

import '01_origin/character_class.dart';

final log = SimpleLogger();

void main() {
  var char1 = CharacterClass(name: 'char1', 100);
  char1.run();
  char1.attack();

  // var hero01 = HeroClass(name: 'user01');
  // hero01.showInfo();
}
