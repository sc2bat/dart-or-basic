import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

/*
문제 10-1 에서 작성한 Wand 클래스와 Wizard 클래스에 대해, 아래의 4가지 규칙에 따라 타당성 검사를 추가하시오.
부정한 값이 설정 될 경우에는 “Exception(“에러메세지");” 를 작성하여 프로그램을 중단 시킵니다.

1. 마법사나 지팡이의 이름은 null 일 수 없고, 반드시 3문자 이상이어야 한다
2. 지팡이의 마력은 0.5 이상 100.0 이하여야 한다.
3. 마법사의 지팡이는 null 일 수 없다.
3. 마법사의 MP는 0 이상이어야 한다. 
4. HP가 음수가 되는 상황에서는 대신 0을 설정 되도록 한다. (에러 아님)

*/

// ignore: camel_case_types
class Wand_1204_01 {
  String _name;
  double power;

  Wand_1204_01({
    required name,
    required this.power,
  }) : _name = name;

  set name(String nameVal) {
    // 1. 마법사나 지팡이의 이름은 null 일 수 없고, 반드시 3문자 이상이어야 한다
    if (nameVal.length <= 2) {
      throw Exception('wand 이름이 너무 짧습니다.');
    }
    _name = nameVal;
  }
}

// ignore: camel_case_types
class Wizard_1204_01 {
  // String name;
  String _name;
  int _hp;
  double _mp;
  Wand_1204_01 _wand;

  Wizard_1204_01({
    required name, // 1. 마법사나 지팡이의 이름은 null 일 수 없고, 반드시 3문자 이상이어야 한다
    required hp,
    required mp,
    required wand, // 3. 마법사의 지팡이는 null 일 수 없다.
  })  : _name = name,
        _hp = hp,
        _mp = mp,
        _wand = wand;

  String get name => _name;

  set name(String nameVal) {
    if (nameVal.length <= 2) {
      throw Exception('wizard 이름이 너무 짧습니다.');
    }
    _name = nameVal;
  }

  set hp(int hpVal) {
    // 4. HP가 음수가 되는 상황에서는 대신 0을 설정 되도록 한다. (에러 아님)
    if (hpVal < 0) {
      _hp = 0;
    }
  }

  set mp(double mpVal) {
    // 2. 지팡이의 마력은 0.5 이상 100.0 이하여야 한다.
    if (mpVal < 5.0 || mpVal > 100.0) {
      throw Exception('mp는 5.0 이상이거나 100.0 이하여야 합니다.');
    }
    _mp = mpVal;
  }
}

void main() {}
