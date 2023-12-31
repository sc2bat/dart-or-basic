import 'dart:convert';
import 'dart:io';

import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

/**
 * 다음과 같은 사원 클래스와 부서 클래스가 있습니다.

 * 총무부 리더 ‘홍길동(41세)’의 인스턴스를 생성하고 직렬화하여 company.txt 파일에 쓰는 프로그램을 작성하시오.
직렬화를 위해 위의 2개 클래스를 일부 수정해도 됩니다.

 */

class Employee {
  String name;
  int age;

  Employee(
    this.name,
    this.age,
  );

  Employee.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'age': age,
      };
}

class Depart {
  String name;
  Employee leader;

  Depart(
    this.name,
    this.leader,
  );

  Depart.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        leader = Employee.fromJson(json['leader']);

  Map<String, dynamic> toJson() => {
        'name': name,
        'leader': leader.toJson(),
      };
}

void main() {
  // 총무부 리더 ‘홍길동(41세)’의 인스턴스를 생성
  final employee = Employee('홍길동', 41);

  // 직렬화
  Map<String, dynamic> json = employee.toJson();
  String jsonToString = jsonEncode(json);

  // company.txt 파일에 쓰는
  const filePath = 'dump/';
  const fileName = 'company.txt';

  final writeFile = File(filePath + fileName);
  writeFile.writeAsStringSync(jsonToString);

  final readString = writeFile.readAsStringSync();
  log.info(readString); // {"name":"홍길동","age":41}

  final depart = Depart('총무부', employee);

  // 직렬화
  Map<String, dynamic> departJson = depart.toJson();
  String departJsonToString = jsonEncode(departJson);
  log.info(departJsonToString);

  final writeDepartFile = File(filePath + fileName);
  writeDepartFile.writeAsStringSync(departJsonToString);

  final readDepartString = writeDepartFile.readAsStringSync();
  log.info(readDepartString); //

  Map<String, dynamic> readDepartJson = jsonDecode(readDepartString);

  // 역직렬화
  try {
    final departReverseJson = Depart.fromJson(readDepartJson);
    log.info('qwerqwer');
    log.info(departReverseJson); // Instance of 'Depart'
    log.info(departReverseJson
        .toJson()); // {name: 총무부, leader: Instance of 'Employee'}
    // {name: 총무부, leader: {name: 홍길동, age: 41}}
    // log.info(departReverseJson.toJson()['leader'].toJson()); // {name: 홍길동, age: 41}
  } catch (e) {
    throw Exception(e);
  }
}
