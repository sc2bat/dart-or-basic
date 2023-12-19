class IsEven {
  final int _value;

  IsEven({
    required int value,
  }) : _value = value;

  bool isEven() {
    return (_value != 0 && _value % 2 == 0) ? true : false;
  }
}
