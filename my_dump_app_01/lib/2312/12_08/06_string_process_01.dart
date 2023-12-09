import 'dart:html';

import 'package:simple_logger/simple_logger.dart';

void main() {
  final log = SimpleLogger();

  String str01 = 'hello';
  String str02 = ' world';

  log.info(str01 + str02);
//   👻 INFO 2023-12-09 09:26:09.835 [caller info not available] hello world

  log.info('${3 + 2}');
// 👻 INFO 2023-12-09 09:26:09.836 [caller info not available] 5
  log.info("test".toUpperCase());
// 👻 INFO 2023-12-09 09:26:09.836 [caller info not available] TEST

  String str04 = 'HELLO';
  // substring
  log.info(str04.substring(0, 3));
// 👻 INFO 2023-12-09 09:26:09.836 [caller info not available] HEL

  // replaceAll
  log.info(str04.replaceAll('LL', 'WW'));
// 👻 INFO 2023-12-09 09:26:09.836 [caller info not available] HEWWO

  // split
  const str05 = '1,2,3';
  final splitStr05 = str05.split(',');
  splitStr05.forEach((element) {
    log.info(element);
  });
// 👻 INFO 2023-12-09 09:26:09.836 [caller info not available] 1
// 👻 INFO 2023-12-09 09:26:09.836 [caller info not available] 2
// 👻 INFO 2023-12-09 09:26:09.836 [caller info not available] 3

  String str06 = 'qwer';
  // toUpperCase()
  log.info(str06.toUpperCase());
// 👻 INFO 2023-12-09 09:26:09.836 [caller info not available] QWER

  String str07 = 'QWERASDF';
  // toLowerCase()
  log.info(str07.toLowerCase());
// 👻 INFO 2023-12-09 09:26:09.836 [caller info not available] qwerasdf

  // indexOf()
  const str08 = 'ASDFQWERZXCV';
  log.info(str08.indexOf('WE'));
  log.info(str08.indexOf('Z'));
  log.info(str08.indexOf('SDFQ'));
// 👻 INFO 2023-12-09 09:26:09.837 [caller info not available] 5
// 👻 INFO 2023-12-09 09:26:09.837 [caller info not available] 8
// 👻 INFO 2023-12-09 09:26:09.837 [caller info not available] 1
  // lastIndexOf()
  log.info(str08.lastIndexOf('Q'));
// 👻 INFO 2023-12-09 09:26:09.837 [caller info not available] 4

  // length, isEmpty
  String str09 = 'qwerasdfzxcv';
  log.info(str09.length);
  log.info(str09.isEmpty);
// 👻 INFO 2023-12-09 09:26:09.837 [caller info not available] 12
// 👻 INFO 2023-12-09 09:26:09.837 [caller info not available] false

  String str10 = 'Dart and Flutter';
  // contains()
  log.info(str10.contains('and'));
// 👻 INFO 2023-12-09 09:26:09.837 [caller info not available] true
  // endsWith()
  log.info(str10.endsWith('Flutter'));
// 👻 INFO 2023-12-09 09:26:09.837 [caller info not available] true
}
