import 'dart:io';

import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

void main() {
  stdout.write('입력 : ');
  String? getVal = stdin.readLineSync();

  log.info(getVal);
}
