import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

// ignore: slash_for_doc_comments
/**
 * 
M4. 등차수열 예제 생성기 만들어 보기
당신은 초등학교 수학선생님입니다. 학생들에게 등차수열에 대한 설명자료를 만들기 위해
예제를 만들어야 합니다. 매번 만들기 어려워 등차수열 예제 생성기를 만들려고 합니다.
어떻게 할까요?
설명:
- 등차수열이란?
5 8 11 14 17 20 23 26 29 32
첫번째 숫자가 5에서 3 씩 증가 해가는 것을 알 수 있습니다.
일반적으로 이것을 첫항이 5, 공차가 3인 등차수열이라고 합니다.
이런 수열을 출력하는 프로그램을 만들어 보자.
미션:
- 첫 항 5, 공차 10인 등차수열을 10번째까지 출력 해 보세요
출력예시:
5 15 25 35 45 55 65 75 85 95
 */

void main() {
  int first = 5;
  int goncha = 10;

  for (int i = 0; i < 10; i++) {
    log.info(first + goncha * i);
  }

//   👻 INFO 2023-11-29 16:26:29.947 [caller info not available] 5
// 👻 INFO 2023-11-29 16:26:29.948 [caller info not available] 15
// 👻 INFO 2023-11-29 16:26:29.948 [caller info not available] 25
// 👻 INFO 2023-11-29 16:26:29.948 [caller info not available] 35
// 👻 INFO 2023-11-29 16:26:29.948 [caller info not available] 45
// 👻 INFO 2023-11-29 16:26:29.948 [caller info not available] 55
// 👻 INFO 2023-11-29 16:26:29.948 [caller info not available] 65
// 👻 INFO 2023-11-29 16:26:29.948 [caller info not available] 75
// 👻 INFO 2023-11-29 16:26:29.948 [caller info not available] 85
// 👻 INFO 2023-11-29 16:26:29.949 [caller info not available] 95
}
