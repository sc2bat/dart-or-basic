import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

// 양의 정수 n이 주어졌을 때, n의 팩토리얼(factorial) 값을 반환하는 함수를 작성하세요.
// 팩토리얼은 1부터 n까지의 모든 양의 정수를 곱한 값입니다.
//  예시: n이 5일 때, 5의 팩토리얼 값은 1 x 2 x 3 x 4 x 5 = 120이므로, 함수는 120을 반환해야 합니다.

void main() {
  // int n = 5;
  int n = 15;
  int result = 1;

  for (int i = 1; i <= n; i++) {
    result *= i;
  }

  log.info("result ==> $result");

  // int n = 5;
  // INFO 2023-11-29 12:42:08.427 [caller info not available] result ==> 120
  // int n = 15;
  // INFO 2023-11-29 12:42:36.697 [caller info not available] result ==> 1307674368000
}
