import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

class Calculator {
  // 덧셈함수
  int addCalc(int a, int b) {
    return a + b;
  }

  // 뺄셈함수
  int minusCalc(int a, int b) {
    return a - b;
  }

  // 곱셈함수
  int multiCalc(int a, int b) {
    return a * b;
  }

  // 나눗셈함수
  double divideCalc(int a, int b) {
    return a / b;
  }
}

void main() {
  Calculator calculator = Calculator();

  int a = 12;
  int b = 4;

  log.info("덧셈 ==> ${calculator.addCalc(a, b)}");
  log.info("뺄셈함수 ==> ${calculator.minusCalc(a, b)}");
  log.info("곱셈함수 ==> ${calculator.multiCalc(a, b)}");
  log.info("나눗셈함수 ==> ${calculator.divideCalc(a, b)}");

  /**
   * 👻 INFO 2023-11-28 14:27:09.812 [caller info not available] 덧셈 ==> 16
  👻 INFO 2023-11-28 14:27:09.812 [caller info not available] 뺄셈함수 ==> 8
  👻 INFO 2023-11-28 14:27:09.812 [caller info not available] 곱셈함수 ==> 48
  👻 INFO 2023-11-28 14:27:09.813 [caller info not available] 나눗셈함수 ==> 3
   */
}
