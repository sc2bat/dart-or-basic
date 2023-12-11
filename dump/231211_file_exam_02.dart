import 'dart:convert';
import 'dart:io';

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
  const fileName = 'company2.txt';

  final depart = Depart('총무부', employee);

  // 직렬화
  Map<String, dynamic> departJson = depart.toJson();
  String departJsonToString = jsonEncode(departJson);
  print(departJsonToString);

  final writeDepartFile = File(filePath + fileName);
  writeDepartFile.writeAsStringSync(departJsonToString);

  final readDepartString = writeDepartFile.readAsStringSync();
  print(readDepartString); //

  Map<String, dynamic> readDepartJson = jsonDecode(readDepartString);

  // 역직렬화
  try {
    final departReverseJson = Depart.fromJson(readDepartJson);
    print('qwerqwer');
    print(departReverseJson); // Instance of 'Depart'
    print(departReverseJson
        .toJson()); // {name: 총무부, leader: Instance of 'Employee'}
    // {name: 총무부, leader: {name: 홍길동, age: 41}}
    // print(departReverseJson.toJson()['leader'].toJson()); // {name: 홍길동, age: 41}
  } catch (e) {
    throw Exception(e);
  }

  /**
Unhandled exception:
Exception: type '_Map<String, dynamic>' is not a subtype of type 'Employee'
#0      main (file:///D:/study_java/Dart/dump/231211_file_exam_02.dart:82:5)
#1      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:297:19)
#2      _RawReceivePort._handleMessage (dart:isolate-patch/isolate_patch.dart:184:12)
   * 
   */
}
