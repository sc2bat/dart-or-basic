import 'package:simple_logger/simple_logger.dart';
import 'dart:math';

final log = SimpleLogger();

void main() {
  // final 변수
  final int finalValue = Random().nextInt(10);
  log.info("finalValue: $finalValue");

  // const 변수
  const int constValue = 5;
  log.info("constValue: $constValue");

  // final 변수 재할당 (오류)
  // finalValue = 10;

  // const 변수 재할당 (오류)
  // constValue = 10;

  // final 변수 변경
  final int finalNewValue = finalValue + 5;
  log.info("finalNewValue: $finalNewValue");

  // const 변수 변경 (오류)
  // const int constNewValue = constValue + 5;
}
