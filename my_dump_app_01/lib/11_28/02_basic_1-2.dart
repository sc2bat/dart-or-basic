import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();
// 이 Dart 코드는 변수 타입과 변수 사용 예시를 포함하고 있습니다.

void main() {
  // 정수형 변수
  int number = 42;

  // 실수형 변수
  double pi = 3.14;

  // 불리언 변수
  bool isDartFun = true;

  // 문자열 변수
  String greeting = 'Hello, Dart!';

  // 리스트 변수
  List<int> numbers = [1, 2, 3, 4, 5];

  // 맵 변수
  Map<String, int> ages = {
    'Alice': 25,
    'Bob': 30,
    'Charlie': 35,
  };

  // 변수 출력
  log.info(number);
  log.info(pi);
  log.info(isDartFun);
  log.info(greeting);
  log.info(numbers);
  log.info(ages);

  // 변수 값 변경
  number = 100;
  pi = 3.141592;
  isDartFun = false;
  greeting = 'Goodbye, Dart!';
  numbers.add(6);
  ages['Dave'] = 40;

  // 변경된 변수 출력
  log.info(number);
  log.info(pi);
  log.info(isDartFun);
  log.info(greeting);
  log.info(numbers);
  log.info(ages);
}
