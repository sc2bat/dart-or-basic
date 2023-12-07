// ignore: slash_for_doc_comments
// 연습문제 2-2
import 'package:simple_logger/simple_logger.dart';

// ignore: slash_for_doc_comments
/**
 * 
연습문제 2-2 에서 작성한 Person 클래스로 생성한 ‘홍길동’, ‘한석봉'의 나이를 각각 20, 25살 이라고 할 때, 이름과 나이를 쌍으로 적당한 컬렉션에 넣습니다.
그 다음, 컬렉션에 저장한 값을 하나씩 다음과 같이 출력합니다.
“홍길동의 나이는 20살”
“한석봉의 나이는 25살”
 */

final log = SimpleLogger();

class Person {
  String name;
  int? age;

  Person(
    this.age, {
    required this.name,
  });
}

void main() {
  var person01 = Person(name: 'hong', 20);
  var person02 = Person(name: 'han', 25);

  Map<String, int> mapPeople = {};
  mapPeople[person01.name] = person01.age!;
  mapPeople[person02.name] = person02.age!;

  for (var entry in mapPeople.entries) {
    log.info('${entry.key}의 나이는 ${entry.value}살');
  }

//   👻 INFO 2023-12-04 19:12:11.645 [caller info not available] hong의 나이는 20살
// 👻 INFO 2023-12-04 19:12:11.646 [caller info not available] han의 나이는 25살
}
