// ignore: slash_for_doc_comments
// 연습문제 2-2
import 'package:simple_logger/simple_logger.dart';

// ignore: slash_for_doc_comments
/**
 * 
다음을 수행하는 코드를 작성하시오.
1. 이름을 가지는 Person 클래스를 작성하시오. Person 은 반드시 이름을 포함해야 합니다.
2. 이름이 ‘홍길동', ‘한석봉' 인 Person 인스턴스를 생성하고, List에 담습니다.
3. List에 담긴 모든 Person 인스턴스의 이름을 표시하시오.


 */

final log = SimpleLogger();

class Person {
  String name;

  Person({
    required this.name,
  });
}

void main() {
  var person01 = Person(name: 'hong');
  var person02 = Person(name: 'han');

  List<Person> people = [];
  people.add(person01);
  people.add(person02);

  for (var person in people) {
    log.info('이 사람의 이름은 ${person.name} 입니다.');
  }

//   👻 INFO 2023-12-04 19:05:47.266 [caller info not available] 이 사람의 이름은 hong 입니다.
// 👻 INFO 2023-12-04 19:05:47.267 [caller info not available] 이 사람의 이름은 han 입니다.
}
