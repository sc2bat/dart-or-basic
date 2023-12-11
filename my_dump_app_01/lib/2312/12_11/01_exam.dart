import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

void main() {
/**
 * exam 1
 * 다음과 같은 프로그램을 작성, 실행 후 runtime error 를 발생하시오
 * 
 */
  final numString01 = '10.5';

  int num01 = int.parse(numString01);

  try {
    log.info(num01);
  } catch (e) {
    throw Exception('erorr $e');
  } finally {
    num01 = 0;
  }
  log.info(num01);
  // Rejecting promise with error: FormatException: 10.5
}
