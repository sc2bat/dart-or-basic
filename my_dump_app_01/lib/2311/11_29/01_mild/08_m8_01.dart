import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

/**
 * 
 * M8. 빼빼로 파티
오늘은 빼빼로 데이 파티를 하는 날입니다. 하지만 빼빼로가 11개 이상 있어야 파티를 열 수
있습니다.
빼빼로 1개는 "1"로 표시하며 1로 연속되는 문자열이 주어집니다.
파티를 열 수 있으면 "OK", 파티를 열 수 없다면 앞으로 최소한의 더 필요한 빼빼로의 수를
출력합니다.
미션:
- 111111111 일때
- 11111 일때
출력예시:
OK
6
 */

void main() {
  String bbro = '11111';
  int need = 0;

  if (bbro.length >= 11) {
    log.info('let\'s party');
  } else {
    need = 11 - bbro.length;
    log.info('we need more bbro $need');
  }

  // 👻 INFO 2023-11-29 16:53:10.484 [caller info not available] we need more bbro 6
}
