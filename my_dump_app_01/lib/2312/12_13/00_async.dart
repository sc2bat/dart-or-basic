import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

void dumpPerformFunction(
    int a, int b, int Function(int a, int b) callbackFunc) {
  log.info('dumpPerformFunction start $a, $b');
  int result = callbackFunc(a, b);
  log.info('result => $result');
}

int add(int a, int b) => a + b;

int substract(int a, int b) => a - b;

void dumpCallbackFunc(void Function() onTap) {
  onTap();
  onTap();
  onTap();
  onTap();
  onTap();
}

Future<void> main() async {
  dumpPerformFunction(5, 3, (a, b) => a * b);

  dumpPerformFunction(5, 3, substract);

  dumpCallbackFunc(() {
    log.info('ringing');
  });

  int Function(int, int) addFunction = add;
  log.info(addFunction.call(3, 10)); // 명시적 호출
  log.info(addFunction(1, 20)); // 암묵적 호출

  saveDb('user Data').then((_) {
    // 불필요한 인자는 _ 를 쓰는 것이 관례이다.
    log.info('saveDb done');
  });
}

Future<void> saveDb(user) async {
  log.info('saveDb start');

  int duSeconde = 3;
  await Future.delayed(Duration(seconds: duSeconde));

  log.info('seconds $duSeconde saveDb done');
}
