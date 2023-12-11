// ignore: file_names
import 'dart:io';

import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

void main() {
  // const fileNm = ;
  try {
    final file = File('test001.txt');
    file.writeAsStringSync('HELLO WORLD');
  } catch (e) {
    log.info(e);
  }

  // final text = file.readAsStringSync();
  // log.info(text);
}
