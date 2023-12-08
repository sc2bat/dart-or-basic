import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

class Person implements Comparable<Person> {
  String name;
  int age;

  Person(
    this.name,
    this.age,
  );

  @override
  String toString() {
    String resultStr = 'Person name $name, age $age';
    return resultStr;
  }

  @override
  int compareTo(Person other) {
    final nameEqual = name.compareTo(other.name);
    if (nameEqual == 0) {
      return -age.compareTo(other.age);
    }
    return nameEqual;
  }
}

void main() {
  final List<int> numbers = [1, 2, 3, 4, 5];
  numbers.sort();
  log.info(numbers);
  final List<int> numbers02 = [3, 2, 1, 5, 4];
  // numbers.sort((a, b) {
  //   if (a > b) {
  //     return -1;
  //   } else if (a < b) {
  //     return 1;
  //   } else {
  //     return 0;
  //   }
  // });
  // log.info(numbers02); //👻 INFO 2023-12-07 14:22:41.303 [caller info not available] [3, 2, 1, 5, 4]
  numbers02.sort((a, b) => a.compareTo(b));
  log.info(
      numbers02); // 👻 INFO 2023-12-07 14:23:38.056 [caller info not available] [1, 2, 3, 4, 5]
  numbers02.sort((a, b) => -a.compareTo(b));
  log.info(
      numbers02); // 👻 INFO 2023-12-07 14:23:38.056 [caller info not available] [5, 4, 3, 2, 1]

  final List<String> names = ['유재석', '박명수', '정형돈', '노홍철'];
  names.sort();
  log.info(names);
//   👻 INFO 2023-12-07 14:19:21.470 [caller info not available] [1, 2, 3, 4, 5]
// 👻 INFO 2023-12-07 14:19:21.471 [caller info not available] [노홍철, 박명수, 유재석, 정형돈]

  final List<Person> people = [
    Person('유재석', 10),
    Person('박명수', 20),
    Person('박명수', 30),
    Person('정형돈', 40),
  ];

  // error
  // people.sort();

  people.sort((a, b) => a.name.compareTo(b.name));
  log.info(people.toString());
  // [Person name 노홍철, age 30, Person name 박명수, age 20, Person name 유재석, age 10, Person name 정형돈, age 40]
  // [Person name 박명수, age 20, Person name 박명수, age 30, Person name 유재석, age 10, Person name 정형돈, age 40]
}
