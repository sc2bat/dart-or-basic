import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

class IronMan {
  String name;
  int powerLevel;

  IronMan(this.name, this.powerLevel);

  void shoot() {
    log.info('$name is shooting guns!');
  }
}

class IronManMK3 extends IronMan {
//MK3는 리펄서를 쏘고 하늘을 날수 있게 해보세요
//shoot() 메서드를 오버라이드 합니다.
//비행고도 값을 추가한뒤
//fly() 메서드를 추가하세요
  var flyheight;

  IronManMK3(String name, int powerlevel, this.flyheight)
      : super(name, powerlevel);

  @override
  void shoot() {
    log.info('$name is shooting guns!');
  }

  void fly() {
    log.info('$name is flying $flyheight !');
  }
}

void main() {
  IronMan mk1 = IronMan("mk1", 10);

  IronManMK3 mk3 = IronManMK3("mk3", 20, 1000);

  mk1.shoot();

  mk3.shoot();
  mk3.fly();

  /**
   * 👻 INFO 2023-11-28 15:43:22.553 [caller info not available] mk1 is shooting guns!
    👻 INFO 2023-11-28 15:43:22.554 [caller info not available] mk3 is shooting guns!
    INFO 2023-11-28 15:48:39.415 [caller info not available] mk3 is flying 1000 !
   * 
   */
}
