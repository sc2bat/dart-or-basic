import 'package:my_dump_app_01/2312/12_18/reverse_string_exam.dart';
import 'package:test/test.dart';

void main() {
  test('reverse String testing', () {
    expect(reverseString('Hello'), 'olleH');
    expect(reverseString('qwerasdfzxcvqwer'), 'rewqvcxzfdsarewq');
    expect(reverseString('1234512345'), '5432154321');
  });

  // ✓ reverse String testing
}
