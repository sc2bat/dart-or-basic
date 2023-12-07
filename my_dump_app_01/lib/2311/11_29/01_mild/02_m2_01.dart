import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

// mild
/**
 * M2. 짝수 홀수
 * 당신은 회사를 대표하여 2개의 숫자를 골라야 합니다. 두 수가 모두 짝수이면
홀수파(홀수를 좋아하는 사람들의 모임)가 싫어합니다. 두 수가 모두 홀수이면 짝수파가
싫어합니다. 당신은 짝수 하나 홀수 하나를 골라서 모두를 만족시켜야 합니다.
설명:
N, M 두 정수가 짝수와 홀수의 쌍이면 “YES”, 그렇지 않으면 “NO”를 출력합니다.
미션:
1. 30, 15 일 때
2. 12, 40 일 때
출력예시:
YES
NO
 */

void main() {
  int pickNum1 = 30;
  int pickNum2 = 15;

  if (pickNum1 % 2 == 0 && pickNum2 % 2 == 0 ||
      pickNum1 % 2 == 1 && pickNum2 % 2 == 1) {
    log.info('NO');
  } else {
    log.info('YES');
  }
//   👻 INFO 2023-11-29 15:57:58.843 [caller info not available] YES

  int pickNum3 = 12;
  int pickNum4 = 40;
  if (pickNum3 % 2 == 0 && pickNum4 % 2 == 0 ||
      pickNum3 % 2 == 1 && pickNum4 % 2 == 1) {
    log.info('NO');
  } else {
    log.info('YES');
  }

// 👻 INFO 2023-11-29 15:57:58.843 [caller info not available] NO
}
