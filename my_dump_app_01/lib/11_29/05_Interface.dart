import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

class IronMan {
  String model;
  int powerLevel;

  IronMan(this.model, this.powerLevel);

  void shoot() {
    log.info("model $model shoot $powerLevel");
  }
}

class IronMan3 extends IronMan {
  double height;
  // IronMan3(super.model, super.powerLevel, this.height);
  IronMan3(String model, int powerlevel, this.height)
      : super(model, powerlevel);

  @override
  void shoot() {
    log.info('$model is better shoot power $powerLevel');
  }

  void fly() {
    log.info('$model fly height $height');
  }
}

void main() {
  IronMan mk1 = IronMan('mk1', 100);
  mk1.shoot();

  IronMan3 mk3 = IronMan3('mk3', 3000, 999.99);
  mk3.shoot();
  mk3.fly();
}
