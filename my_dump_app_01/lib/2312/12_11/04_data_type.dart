import 'dart:convert';

import 'package:properties/properties.dart';
import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

// 직렬화, 역직렬화는 toJson(), fromJson() 으로 하는 것이 국룰
class UserDump {
  final String name;
  final String email;

  UserDump(
    this.name,
    this.email,
  );

  // The initializer type 'Object?' can't be assigned to the field type 'String'
  // Map<String, Object> => Map<String, dynamic>
  UserDump.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
      };
}

void main() {
  // CSV
  String csvStr = 'hong, john, load';

  // property type file read
  // https://pub.dev/packages/properties
  // const filePath = './';
  // Properties p = Properties.fromFile(filePath);
  // String? value = p.get('test.key.1');

  // XML

  // JSON
  final jsonDump = {
    "name": "hong",
    "age": 30,
    "asdf": 10.3,
    "email": "qwerasdf@naver.com"
  };

  log.info(jsonDump.runtimeType);
  //👻 INFO 2023-12-11 15:03:07.915 [caller info not available] IdentityMap<String, Object>

  // 직렬화, 역직렬화는 toJson(), fromJson() 으로 하는 것이 국룰
  final user01 = UserDump('hong', 'qwerasdf@naver.com');
  final userJson = user01.toJson();
  log.info(userJson);
  //👻 INFO 2023-12-11 15:07:02.383 [caller info not available] {name: hong, email: qwerasdf@naver.com}
  String userJsonStr = jsonEncode(userJson);
  log.info(userJsonStr);
  // 👻 INFO 2023-12-11 15:13:16.813 [caller info not available] {"name":"hong","email":"qwerasdf@naver.com"}

  String jsonString = '{"name": "Lee", "age": 30, "email": "asdf@naver.com"}';
  Map<String, dynamic> json = jsonDecode(jsonString);
  log.info(json);
  //👻 INFO 2023-12-11 15:13:16.813 [caller info not available] {name: Lee, age: 30, email: asdf@naver.com}
}
