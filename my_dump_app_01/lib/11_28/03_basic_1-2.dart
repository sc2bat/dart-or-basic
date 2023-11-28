import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();
// 이 Dart 코드는 변수 타입과 변수 사용 예시를 포함하고 있습니다.

// 이 Dart 코드는 제어문 예시를 포함하고 있습니다.

void main() {
  // if-else 문: 조건에 따라 코드 실행 여부 결정
  int number = 42;
  if (number > 50) {
    log.info('number is greater than 50');
  } else {
    log.info('number is less than or equal to 50');
  }

  // switch-case 문: 다중 분기 처리
  String fruit = 'apple';
  switch (fruit) {
    case 'apple':
      log.info('This is an apple');
      break;
    case 'banana':
      log.info('This is a banana');
      break;
    default:
      log.info('This is not a fruit');
  }

  // for-in 문: 리스트나 맵의 모든 항목에 대해 반복
  List<int> numbers = [1, 2, 3, 4, 5];
  for (int number in numbers) {
    log.info(number);
  }

  // while 문: 조건이 참인 동안 코드 반복 실행
  int count = 0;
  while (count < 5) {
    log.info(count);
    count++;
  }

  // do-while 문: 코드를 최소한 한번 실행하고, 조건이 참인 동안 반복 실행
  int i = 0;
  do {
    log.info(i);
    i++;
  } while (i < 3);
}
