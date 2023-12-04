// getter / setter 의 메리트

// Read Only, Write Only 필드의 실현
// 필드의 이름 등, 클래스의 내부 설계를 자유롭게 변경 가능
// 필드로의 액세스를 검사 가능

class User {
  int id;
  String name;

  User(
    this.id,
    this.name,
  );
}

class UserManage {
  int _id;
  String _name;

  UserManage({
    required int id,
    required String name,
  })  : _id = id,
        _name = name;

  int get id => _id;
  set id(int idVal) => _id = id;

  String get name => _name;
  set name(String nameVal) => _name = name;
}

void main() {}
