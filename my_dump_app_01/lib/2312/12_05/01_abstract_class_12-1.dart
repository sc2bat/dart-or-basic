// 12-1
// 어떤 회사에서 자산관리 프로그램을 만들려고 한다. 현시점에서 컴퓨터, 책 을 표현하는, 다음과 같은 두개의 클래스가 있다

// 이후, 컴퓨터와 책 이외에도 여러가지 자산을 관리하고 싶은 경우에 유용한 유형자산(TangibleAsset) 이라는 이름의 추상클래스를 작성 하시오. 또, Computer 나 Book 은 그 부모 클래스를 활용한 형태로 수정 하시오.

// 12-2
// 문제 12-1 의 회사에서, 형태가 없는 무형자산(IntangibleAsset) 도 관리하려고 생각하고 있다.
// 무형자산에는, 예를들어 특허권(Patent) 등이 있다.
// 무형자산도 유형자산도 자산(Asset)의 일종이다.
// 이것을 전제로 다음의 상속도의 가, 나, 다 부분의 클래스명을 생각 해 보시오.

// 가) 자산(Asset)

import '02_interface_practice_12-3.dart';

abstract class Asset {
  String name;
  int price;

  Asset({
    required this.name,
    required this.price,
  });
}

// 무형자산(IntangibleAsset)
abstract class IntangibleAsset extends Asset {
  IntangibleAsset({
    required super.name,
    required super.price,
  });
}

// 유형자산(TangibleAsset)
// 12-4
// 유형자산 (TangibleAsset) 은, 자산 (Asset) 의 일종이며, 형태가 있는 것 (Thing) 의 일종이기도 하다.
// 이 정의에 맞도록 TangibleAsset 의 소스 코드를 수정하시오.???
// 이 때, TangibleAsset 에 필드나 메소드의 추가가 필요하다면, 적당히 추가하시오. ???
abstract class TangibleAsset extends Asset implements Thing {
  double _weight;

  String color;

  TangibleAsset({
    required super.name,
    required super.price,
    required this.color,
    required double weight,
  }) : _weight = weight;

  @override
  double get weight => _weight;

  @override
  set weight(double weightValue) => _weight = weightValue;
}

// 무형자산 특허권(Patent)
class Patent extends IntangibleAsset {
  String patentId;

  Patent({
    required super.name,
    required super.price,
    required this.patentId,
  });
}

// 유형자산 책(Book)
class Book extends TangibleAsset {
  String isbn;

  Book({
    required super.name,
    required super.price,
    required super.color,
    required this.isbn,
    required super.weight,
  });
}

// 유형자산 컴퓨터(Computer)
class Computer extends TangibleAsset {
  String makeName;

  Computer({
    required super.name,
    required super.price,
    required super.color,
    required this.makeName,
    required super.weight,
  });
}

/**

 */