enum AuthState {
  authenticated,
  unauthenticated,
  unknown,
}

void main() {
  AuthState authState = AuthState.authenticated;
  switch (authState) {
    case AuthState.authenticated:
      print('authenticated');
      break;
    case AuthState.unauthenticated:
      print('unauthenticated');
      break;
    case AuthState.unknown:
      print('unknown');
      break;
  }

  const userColor = ColorEnum.blue;
  if (userColor == ColorEnum.blue) {
    print('userColor is blue');
  }

  assert(ColorEnum.red.index == 0);
  assert(ColorEnum.green.index == 1);
  assert(ColorEnum.blue.index == 2);
  assert(ColorEnum.black.index == 3);

  List<ColorEnum> colors = ColorEnum.values;
  assert(colors[2] == ColorEnum.blue);

  var aColor = ColorEnum.blue;

  switch (aColor) {
    case ColorEnum.red:
      print('Red as roses!');
      break;
    case ColorEnum.green:
      print('Green as grass!');
      break;
    default: // 이 처리가 없으면, 경고가 발생합니다.
      print(aColor); // 'ColorEnum.blue'
  }
}

enum ColorEnum {
  red,
  green,
  blue,
  black,
}
