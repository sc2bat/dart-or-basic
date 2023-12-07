import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

class IronMan {
  String name;
  int powerlevel;

  IronMan(this.name, this.powerlevel);

  void fly() {
    log.info('name is $name fly');
  }

  void shoot() {
    log.info('$name \'s shoot');
  }
}

class WarMachine extends IronMan {
  String armorType;

  WarMachine(String name, int powerlevel, this.armorType)
      : super(name, powerlevel);

  @override
  void shoot() {
    log.info("WarMachine $name $powerlevel shoot");
  }

  void defend() {
    log.info("WarMachine $name $armorType armorType");
  }
}

void main() {}
