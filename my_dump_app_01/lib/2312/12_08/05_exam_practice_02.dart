// i 번째 글자가 모음인지 알려주는 isVowel() 함수를 완성하시오
// 영어에서의 모음은 a, e, i, o, u 다섯가지이다
import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

bool isVowel(String str, int num) {
  final aeiou = ['a', 'e', 'i', 'o', 'u'];

  bool vowelResult = false;

  for (var a in aeiou) {
    vowelResult = str.substring(num, num + 1) == a;
    if (vowelResult) {
      break;
    }
  }

  return vowelResult;
}

bool isConsonant(String str, int num) {
  final aeiou = ['a', 'e', 'i', 'o', 'u'];

  bool consonantResult = false;

  for (var a in aeiou) {
    consonantResult = str.substring(num, num + 1) == a;
    if (consonantResult) {
      break;
    }
  }
  return consonantResult;
}

void main() {
  String str01 = 'abcdefg';

  for (int i = 0; i < str01.length; i++) {
    if (isVowel(str01, i)) {
      log.info('$str01 의 $i 번째 문자는 모음입니다.');
    }
  }
//   flutter: 👻 INFO 2023-12-08 14:34:07.559401 [caller info not available] abcdefg 의 0 번째 문자는 모음입니다.
// flutter: 👻 INFO 2023-12-08 14:34:07.562415 [caller info not available] abcdefg 의 4 번째 문자는 모음입니다.

  for (int i = 0; i < str01.length; i++) {
    if (!isConsonant(str01, i)) {
      log.info('$str01 의 $i 번째 문자는 자음입니다.');
    }
  }

//   lutter: 👻 INFO 2023-12-08 14:47:37.253485 [caller info not available] abcdefg 의 1 번째 문자는 자음입니다.
// flutter: 👻 INFO 2023-12-08 14:47:37.253549 [caller info not available] abcdefg 의 2 번째 문자는 자음입니다.
// flutter: 👻 INFO 2023-12-08 14:47:37.253584 [caller info not available] abcdefg 의 3 번째 문자는 자음입니다.
// flutter: 👻 INFO 2023-12-08 14:47:37.253621 [caller info not available] abcdefg 의 5 번째 문자는 자음입니다.
// flutter: 👻 INFO 2023-12-08 14:47:37.253654 [caller info not available] abcdefg 의 6 번째 문자는 자음입니다.
}
