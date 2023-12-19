import 'package:my_dump_app_01/2312/12_18/find_max_exam.dart';
import 'package:test/test.dart';

void main() {
  test('find max value from int list', () {
    expect(findMax([2, 5, 1, 9, 3]), 9);
    expect(findMax([1, 2, 3, 4, 5]), 5);
  });
  // ✓ find max value from int list
}
