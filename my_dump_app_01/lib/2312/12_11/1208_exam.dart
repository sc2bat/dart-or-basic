import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

enum KeyType {
  padlock,
  button,
  dial,
  finger,
}

class StrongBox<E> {
  KeyType _keyType;
  E? _item;
  int _count = 0;

  StrongBox(
    this._keyType,
  );

  void put(E item) => _item = item;

  // E? get() => _item;
  E? get() {
    _count++;

    switch (_keyType) {
      case KeyType.padlock:
        if (_count >= 1024) {
          return null;
        }
        break;
      case KeyType.button:
        if (_count >= 10000) {
          return null;
        }
        break;
      case KeyType.dial:
        if (_count >= 30000) {
          return null;
        }
        break;
      case KeyType.finger:
        if (_count >= 1000000) {
          return null;
        }
        break;
    }

    return _item;
  }
}

void main() {
  List<int> items = [];
  // items.

  // final box = StrongBox<KeyType>(KeyType.padlock);
}
