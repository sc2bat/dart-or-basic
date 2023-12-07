import 'package:my_dump_app_01/2311/11_30/hero.dart';

void main(List<String> args) {
  final hero = Hero('superman', 10);

  final Car car = Car();

  Door door = Door();

  door = Door();

  // 기본 자료형
  // int, double, bool, String

  //  새로운 타입을 만들때 => 클래스 작성
}

class Car {
  List<Door> doors = [];
  List<Wheel> wheels = [];
  String color = 'red';
  String number = '33아3333';
  double speed = 0.0;

  bool isStarting = false;

  void start() {
    isStarting = true;
  }

  void drive() {
    if (isStarting) {
      // gooo
    }
  }
}

class Wheel {}

class Door {}
