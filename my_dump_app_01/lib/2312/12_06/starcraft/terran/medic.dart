import '../interface/interfaces.dart';
import 'terran.dart';

class Medic extends TerranUnit implements Bionic {
  Medic({
    required super.name,
    required super.hp,
    required super.mineral,
    required super.gas,
  });

  @override
  void move() {
    log.info('$name moving');
  }

  void healBionic(Bionic bionicUnit) {
    log.info('Medic $name heal $bionicUnit');
  }
}
