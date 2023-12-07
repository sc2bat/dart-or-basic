// ignore_for_file: slash_for_doc_comments

import 'package:simple_logger/simple_logger.dart';

/**
 * ⭐️⭐️ 고대 수식
 * 
 * 고고학자 겸 IT 엔지니어 인 당신은 유적의 발굴에 성공하고 거기에 수식 같은 것이 새겨 져 있
다는 것을 알게되었습니다.

</////// + <<</ + ////

당신은 수식의 표기법 해독을 시도했는데, 다음의 규칙을 찾아 냈습니다.
수식은 모두 2 개 이상의 정수의 덧셈이다
사용하는 정수는 1에서 99까지 10 진법을 사용
연속하는 "<" 의 수가 10의 자리의 수를 나타내며, 연속하는 "/"(슬래시)의 수가 1의 자리의
수를 나타낸다
"+"가 덧셈 기호를 나타낸다
이 규칙을 바탕으로 작성된 수식을 해석하고, 그 결과를 돌려주는 프로그램을 작성하십시오.

예)
  ///+////
    → 3 + 4 = 7

  //+//////
    → 2 + 6 = 8

  <///////+<<</+////
    → 17 + 31 + 4 = 52

  입력
    입력은 다음 형식으로 제공됩니다.
    E
    1 번째 줄에는 고대문자로 된 수식을 나타내는 문자열 E가 주어집니다.
    입력은 1 행이며 입력 값 마지막 줄의 끝에 개행이 하나 들어갑니다

  입력 예1
    ///+////
  출력 예1
    7

  입력 예2
    <///////+<<</+////
  출력 예2
    52

  입력 예3
    <<<<<<<<</////////+<<<<<<<<</////////
  출력 예3
    198
 */

final log = SimpleLogger();

void main() {
  String E = '<///////+<<</+////';
  E = '<<<<<<<<</////////+<<<<<<<<</////////';

  List<String> splitE = E.split('+');
  // log.info(splitE);

  int finalResult = 0;
  for (int i = 0; i < splitE.length; i++) {
    List<String> strS = splitE[i].split('');
    // log.info(strS);
    int result = 0;

    for (var strE in strS) {
      if (strE == '<') {
        result += 10;
      } else {
        result += 1;
      }
    }
    finalResult += result;
  }

  log.info(finalResult);

  // 👻 INFO 2023-11-30 09:58:09.737 [caller info not available] 52
  // 👻 INFO 2023-11-30 09:58:48.365 [caller info not available] 198
}
