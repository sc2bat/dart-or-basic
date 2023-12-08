import 'dart:math';

import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

void main() {
  String greeting = 'hello';
  String greeting2 = 'hello';

  // identical 실제 주소 비교
  log.info(identical(greeting, greeting2)); // true

  const String greeting3 = 'hello';
  const String greeting4 = 'hello';
  log.info(identical(greeting3, greeting4)); // true

  String greeting5 = 'hello';
  log.info(greeting5);
  String greeting6 = greeting5.replaceAll('o', 'j');
  log.info(greeting6);

  Rectangle box = const Rectangle(5, 10, 60, 90);
  Rectangle box2 = box;

  // box.translate(100, 100);
  // log.info(box.x);

  String greeting01 = 'Hello, World!';
  String greeting02 = greeting01;
  greeting02.toUpperCase();

  log.info(greeting01); // Hello, World!
  log.info(greeting02); // Hello, World!

  int luNumber01 = 13;
  int luNumber02 = luNumber01;
  luNumber02 = 12;
  log.info(luNumber01); // 13
  log.info(luNumber02); // 12
}
