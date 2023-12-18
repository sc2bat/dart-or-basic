import 'package:my_dump_app_01/2312/12_18/account.dart';
import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

void main() {
  Account a = Account('hong', 1000);
  Account b = Account('han', 0);

  a.transfer(b, 500);

  log.info('a balance => ${a.balance}');
  log.info('b balance => ${b.balance}');
//   I/flutter ( 8524): 👻 INFO 2023-12-18 07:03:31.097534 [caller info not available] a balance => 500
// I/flutter ( 8524): 👻 INFO 2023-12-18 07:03:31.104577 [caller info not available] b balance => 500

  if (a.balance != 500) {
    throw Exception('erororor');
  }
  if (b.balance != 500) {
    throw Exception('errorr~~');
  }
}
