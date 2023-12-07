import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

/**
 * M6. 연속된 같은 수 판별
당신은 입력된 수를 판별하는 프로그램을 만들고 있습니다. 프로그램은 입력된 숫자의 각
자리 수가 모두 같은 숫자라면 그 숫자를 그대로 출력하고, 아니라면 "No"를 출력합니다.
미션:
- 777 일때
- 725 일때
출력예시:
777
No
 */

void main() {
  // int number1 = 77733;
  int number1 = 555;
  bool chk = true;

  String numStr1 = number1.toString();
  String a = numStr1.substring(0, 1);

  for (int i = 0; i < numStr1.length; i++) {
    // log.info('${numStr1.substring(i, i + 1)}');

    if (a != numStr1.substring(i, i + 1)) {
      chk = false;
      break;
    }
  }
  if (chk) {
    log.info(number1);
  } else {
    log.info('No');
  }
}
