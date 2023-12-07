import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();
// 주어진 정수 배열 또는 리스트에서 가장 큰 두 수를 찾아 더한 값을 반환하는 함수를 작성하세요.
//  예시: [1, 2, 5, 3, 9, 8] 이 주어졌을 때, 가장 큰 두 수는 9와 8이므로 9 + 8 = 17이 반환되어야 합니다.

void main() {
  List<int> intList = [1, 2, 5, 3, 9, 8, 131, 444, 555, 11, 3];

  intList.sort();

  int bigNum1 = intList[intList.length - 1];
  int bigNum2 = intList[intList.length - 2];

  log.info("bigNum1 $bigNum1  bigNum2 $bigNum2");
}
