import 'package:my_dump_app_01/2312/12_18/even_exam.dart';
import 'package:test/test.dart';

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
