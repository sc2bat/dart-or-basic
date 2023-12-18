import 'package:my_dump_app_01/2312/12_18/bank.dart';
import 'package:simple_logger/simple_logger.dart';
import 'package:test/test.dart';

final log = SimpleLogger();
void main() {
  const fakeBank = {
    "name": "hong",
    "address": "qwerasdf qwerasdfzxcv",
    "phone": "010-111-111",
  };
  test('bank create testing', () {
    final bank = Bank('han', 'asdfzxcv', '1010305');

    expect(bank.name, 'han');
    expect(bank.address, 'asdfzxcv');
    expect(bank.phone, '1010305');

    // ✓ bank create testing
  });

  test('bank properties equal testing', () {
    final bank1 = Bank('han', 'qwerasdf', '030555');
    final bank2 = Bank('han', 'asdfzxcv', '030555');
    final bank3 = Bank('han', 'qwerasdf', '030555');

    expect(bank1, isNot(equals(bank2)));
    expect(bank1.hashCode, isNot(equals(bank2.hashCode)));

    expect(bank1, equals(bank3));
    expect(bank1.hashCode, equals(bank3.hashCode));

    // ✓ bank properties equal testing
  });

  test('bank convert json testing', () {
    final bank1 = Bank('hong', 'qwerasdf qwerasdfzxcv', '010-111-111');
    final jsonMap = bank1.toJson();

    expect(fakeBank, jsonMap);
    // ✓ bank convert json testing
  });

  test('json to bank', () {
    final bank = Bank.fromJson(fakeBank);

    expect(bank.name, 'hong');
    expect(bank.address, 'qwerasdf qwerasdfzxcv');
    expect(bank.phone, '010-111-111');
    // ✓ json to bank
  });
}
