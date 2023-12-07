// ignore_for_file: slash_for_doc_comments

import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

/**
 * 
 * M3. 연락처 문자열 결합
당신은 이름과 연락처를 한줄로 정리하고 있는데 그 양이 1억개라면? 어떻게 할까요?
미션:
- ‘모두연’ , ‘010’, ‘1234’, ‘5678’ 을 한줄로 만들어 보시요
출력예시:
모두연 010-1234-5678
 * 
 */

void main() {
  // log.info('hello world');

  String strResult = '';
  List<String> qwer = ['모두연1', '010', '1234', '5678'];

  for (int i = 0; i < qwer.length; i++) {
    strResult += qwer[i];
    if (i % 4 == 0) {
      strResult += ' ';
    } else if (i % 4 == 3) {
      strResult += ' ';
    } else {
      strResult += '-';
    }

    if (i % 4 == 3) {
      log.info(strResult);
    }
  }
  // INFO 2023-11-29 16:24:51.324 [caller info not available] 모두연1 010-1234-5678
}
