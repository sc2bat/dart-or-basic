import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

// mild
/**
 * 
  더 큰수 판별하기
  기능:
  A, B 두 정수 중 더 큰 수를 출력
  A, B가 같다면 ‘eq’를 출력
  미션:
  1. 10, 20 중 더 큰수를 출력
  2. 10,10은 ‘eq’ 출력
  출력예시:
  20
  eq
 */

void main() {
  int a = 30;
  int b = 20;

  if (a > b) {
    log.info('더 큰 수는 $a 입니다.');
  } else if (a < b) {
    log.info('더 큰 수는 $b 입니다.');
  } else {
    log.info('두 수는 같습니다 eq');
  }
  // INFO 2023-11-29 15:52:44.243 [caller info not available] 더 큰 수는 30 입니다
}
