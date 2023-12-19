import 'package:my_dump_app_01/2312/12_18/even_exam.dart';
import 'package:test/test.dart';

/**
 * 짝수 판별기 함수:

입력으로 정수를 받아들이는 함수 isEven을 작성하세요.
isEven 함수는 입력된 정수가 짝수인 경우 true를 반환하고, 홀수인 경우 false를 반환해야 합니다.
예를 들어, isEven(4)는 true를 반환해야 합니다.

 * 
 */

void main() {
  test('test int even', () {
    final isEven1 = IsEven(value: 3);
    final isEven2 = IsEven(value: 2);
    final isEven3 = IsEven(value: 0);

    expect(false, isEven1.isEven());
    expect(true, isEven2.isEven());
    expect(false, isEven3.isEven());
  });

  // ✓ test int even
}
