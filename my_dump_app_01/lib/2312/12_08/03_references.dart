import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

void main() {
  String s = 'hello';
  String s1 = '$s world';

  log.info(s.hashCode);
  log.info(s1.hashCode);
//   flutter: 👻 INFO 2023-12-08 12:22:13.632437 [caller info not available] 150804507
// flutter: 👻 INFO 2023-12-08 12:22:13.635285 [caller info not available] 1045060183

  for (var i = 0; i < 100; i++) {
    s += '$i';
  }
  log.info(s.hashCode);
}
