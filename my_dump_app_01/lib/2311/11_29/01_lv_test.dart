import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();
// 주어진 문자열이 회문(palindrome)인지 확인하는 함수를 작성하세요.
// 회문이란, 거꾸로 읽어도 원래와 같은 단어나 문장을 말합니다.
//  예시: "racecar"는 회문입니다. "hello"는 회문이 아닙니다.

void main() {
  // String problemStr = 'racecar';
  String problemStr = 'hello';

  // log.info(problemStr.length);
  // log.info(problemStr.substring(0, (problemStr.length / 2).floor()));

  String Str = problemStr.substring(0, (problemStr.length / 2).floor());
  String Str2 =
      problemStr.substring((problemStr.length / 2).ceil(), problemStr.length);
  String reversedStr = Str2.split('').reversed.join();

  // log.info(Str);
  // log.info(reversedStr);

  if (Str.compareTo(reversedStr) == 0) {
    log.info('문자열 str 은 회문이 맞습니다');
  } else {
    log.info('문자열 str 은 회문이 아닙니다');
  }
}
