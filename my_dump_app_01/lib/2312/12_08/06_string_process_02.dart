import 'package:simple_logger/simple_logger.dart';

void main() {
  final log = SimpleLogger();

  // StringBuffer
  final buffer01 = StringBuffer('Dart');

  buffer01
    ..write(' and ')
    ..write('Flutter');

  log.info(buffer01);

  final stopwatch01 = Stopwatch()..start();

  var str01 = '';
  for (int i = 0; i < 10000; i++) {
    str01 += i.toString();
  }
  log.info(stopwatch01.elapsed);
  // INFO 2023-12-09 09:37:39.164 [caller info not available] 0:00:00.000500

  final stopwatch02 = Stopwatch()..start();

  var str02 = StringBuffer();
  for (int i = 0; i < 10000; i++) {
    str02.write(i.toString());
  }
  log.info(stopwatch02.elapsed);
  // NFO 2023-12-09 09:37:39.165 [caller info not available] 0:00:00.000601
}
