// i 번째 글자가 모음인지 알려주는 isVowel() 함수를 완성하시오
// 영어에서의 모음은 a, e, i, o, u 다섯가지이다
import 'package:flutter/material.dart';
import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

// 다음 조건을 만족하는 금고인 StrongBox 클래스를 정의하시오.
// 금고 클래스에 담는 인스턴스의 타입은 미정
// 금고에는 1개의 인스턴스를 담을 수 있음
// put() 메서드로 인스턴스를 저장하고 get() 메서드로 인스턴스를 얻을 있음
// get() 으로 얻을 때는 별도의 타입 캐스팅을 사용하지 않아도 됨

class StrongBox<E> {
  E? _value;
  StrongBox({
    required E value,
  }) : _value = value;

  set value(E value) => _value = value;
  E? get() {
    return _value;
  }
}

// 연습문제 1에서 작성한 StrongBox 클래스에 열쇠의 종류를 나타내는 열거형 KeyType을 정의하고,
// 다음 내용을 반영하여 StrongBox 클래스를 수정하시오.

// 열쇠의 종류를 나타내는 필드 변수
// 열쇠의 종류를 받는 생성자

// 단, 열쇠의 종류는 다음 4종류로 한정한다. 각 열쇠는 사용횟수의 한도가 정해져 있다.

// padlock    (1,024회)
// button      (10,000회)
// dial             (30,000회)
// finger       (1,000,000회)

// 금고에서 get() 메서드를 호출할 때 마다 사용횟수를 카운트하고 각 열쇠의 사용횟수에 도달하기 전에는 null을 리턴한다.

enum KeyType {
  padlock,
  button,
  dial,
  finger,
}

class StrongBox02<E> {
  KeyType? _keyType;
  int _callCount = 0;

  StrongBox02({
    required KeyType keyType,
  }) {
    put(keyType);
  }

  void put(KeyType keyType) {
    _keyType = keyType;
    _callCount = 0;
  }

  KeyType? get() {
    if (_keyType == null) {
      log.info('keyType is null');
      return null;
    }
    _callCount++;
    switch (_keyType!) {
      case KeyType.padlock:
        if (_callCount <= 1024) {
          return _keyType;
        }
        break;
      case KeyType.button:
        if (_callCount <= 10000) {
          return _keyType;
        }
        break;
      case KeyType.dial:
        if (_callCount <= 30000) {
          return _keyType;
        }
        break;
      case KeyType.finger:
        if (_callCount <= 1000000) {
          return _keyType;
        }
        break;
      // case null:
      //   log.info('keyType is null');
      //   return null;
    }
    return null;
  }
}

void main() {
  StrongBox02 padlockBox = StrongBox02(keyType: KeyType.padlock);

  for (int i = 1; i < 1030; i++) {
    var keyTest = padlockBox.get();
    // log.info(keyTest);
    if (keyTest != null) {
      log.info('$i번째 key 사용');
    } else {
      log.info('사용횟수 제한');
      break;
    }
  }

//   flutter: 👻 INFO 2023-12-08 16:34:51.130976 [caller info not available] 1019번째 key 사용
// flutter: 👻 INFO 2023-12-08 16:34:51.131005 [caller info not available] 1020번째 key 사용
// flutter: 👻 INFO 2023-12-08 16:34:51.131075 [caller info not available] 1021번째 key 사용
// flutter: 👻 INFO 2023-12-08 16:34:51.131111 [caller info not available] 1022번째 key 사용
// flutter: 👻 INFO 2023-12-08 16:34:51.131179 [caller info not available] 1023번째 key 사용
// flutter: 👻 INFO 2023-12-08 16:34:51.131211 [caller info not available] 1024번째 key 사용
// flutter: 👻 INFO 2023-12-08 16:34:51.131257 [caller info not available] 사용횟수 제한
}
