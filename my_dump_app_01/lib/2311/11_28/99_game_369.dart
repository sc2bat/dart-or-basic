import 'dart:io';

import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

void main() {
  bool chkWrong = true;
  int curNum = 1;

  log.info('369 게임을 시작합니다.');

  while (chkWrong) {
    stdout.write('숫자 또는 박수 입력 : ');
    String? getVal = stdin.readLineSync();

/**
 * 
 */
    if (getVal == 'jjak') {
    } else if (curNum == int.parse(getVal!)) {}

    if (curNum % 3 == 0) {
      log.info('show baksu jjak');
    } else {
      log.info(curNum);
    }

    curNum += 1;

    if (curNum == 10) {
      chkWrong = false;
      log.info('오답입니다!');
    }
  }

  log.info('369 게임을 종료합니다.');
}
