import 'package:my_dump_app_01/12_06/starcraft/object.dart';
import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

abstract interface class Race {}

abstract interface class ZergRecovery {
  void autoHeal(int hp) {
    hp++;
  }
}

abstract interface class Shield {
  set shield(int shieldPoint) => shieldPoint;
  int get shield;

  void autoRechargeShield() {
    shield++;
    log.info('shield++ every second');
  }
}

abstract interface class Bionic {}

abstract interface class Mechanic {}

abstract interface class Attackable {
  set attackDamage(int attackDamage);
  int get attackDamage;

  void attack(StartCraftObject scObject) {
    log.info('attack ~~~');
  }
}

abstract interface class Movable {
  void move() {
    log.info('moving ~~~');
  }
}

abstract interface class GatherResource {
  void gatherMineral() {
    log.info('gathering mineral ~~~');
  }

  void gatherGas() {
    log.info('gathering gas ~~~');
  }
}
