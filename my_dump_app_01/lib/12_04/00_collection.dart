import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

void main() {
  /**
   * 
  final List<int> numbers = [];

  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  numbers.add(4);
  numbers.add(5);

  print(numbers);

  final numbers2 = [];
  numbers2.add(1);
  numbers2.add('q');
  numbers2.add(true);
  numbers2.add(null);

  print(numbers2);

  for (var num in numbers2) {}
   */

  // List
  // <int> 제네릭형태
  // 제네릭 사용 이유 : 기본적으로 type safety 를 위해 사용
  List<int> intList01 = [1, 2, 3, 4];
  intList01.add(4);
  log.info('List 순서대로 쌓임, 중복 가능 $intList01');
  // 👻 INFO 2023-12-04 18:40:39.681 [caller info not available] List 순서대로 쌓임, 중복 가능 [1, 2, 3, 4, 4]

  // Set
  Set<String> setDump01 = {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine'
  };
  // Set<String> 으로 되어있지만 var 로 하여도 문제는 없음
  var setDump02 = {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine'
  }; //Set<String> setDump02
  setDump02.add('test01');
  setDump02.add('test01');
  setDump02.add('test01');

  log.info(setDump02);
  // 여러번 같은 값을 넣어도 중복되지 않는다
  // 👻 INFO 2023-12-04 18:46:54.231 [caller info not available] {fluorine, chlorine, bromine, iodine, astatine, test01}

  // Map
  // key, value 형태 **키값은 중복 불가
  Map<String, Object> mapDump01 = {
    'name': 'hong',
    'power': 1000,
    'email': 'qwer@naver.com'
  };
  log.info(mapDump01['name']);
  log.info(mapDump01['power']);
  log.info(mapDump01['email']);
//   👻 INFO 2023-12-04 18:44:51.836 [caller info not available] hong
// 👻 INFO 2023-12-04 18:44:51.836 [caller info not available] 1000
// 👻 INFO 2023-12-04 18:44:51.836 [caller info not available] qwer@naver.com
}
