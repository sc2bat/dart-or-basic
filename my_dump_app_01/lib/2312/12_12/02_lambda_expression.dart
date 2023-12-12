import 'dart:math';

import 'package:simple_logger/simple_logger.dart';

void printElement(int element) {
  print(element);
}

final log = SimpleLogger();

void main() {
  var list = [
    1,
    2,
    3,
  ];

  list.forEach(printElement);
  list.forEach(log.info);

  list.where((e) => e.isEven);
  list.where((e) => e.isEven);

  // Named parameters
  void dumpFunction01({
    bool? a,
    bool? b,
  }) {
    log.info('a => $a, b => $b');
  }

  dumpFunction01(a: true, b: false);
  dumpFunction01(a: null, b: null);
  dumpFunction01(b: true, a: false);
  dumpFunction01();
  dumpFunction01(a: true);
  dumpFunction01(b: true);
// 👻 INFO 2023-12-12 14:44:15.191 [caller info not available] a => true, b => false
// 👻 INFO 2023-12-12 14:44:15.191 [caller info not available] a => null, b => null
// 👻 INFO 2023-12-12 14:44:15.191 [caller info not available] a => false, b => true
// 👻 INFO 2023-12-12 14:44:15.191 [caller info not available] a => null, b => null
// 👻 INFO 2023-12-12 14:44:15.191 [caller info not available] a => true, b => null
// 👻 INFO 2023-12-12 14:44:15.191 [caller info not available] a => null, b => true

  // prameters default value
  void dumpFunction02({bool a = false, bool b = false}) {
    log.info('a => $a, b => $b');
  }

  dumpFunction02();
  dumpFunction02(a: true);
  dumpFunction02(b: true);
// 👻 INFO 2023-12-12 14:46:53.554 [caller info not available] a => false, b => false
// 👻 INFO 2023-12-12 14:46:53.554 [caller info not available] a => true, b => false
// 👻 INFO 2023-12-12 14:46:53.554 [caller info not available] a => false, b => true

// required 로 필수 파라미터로 지정
  void dumpFunction03({
    required bool? a,
    required bool b,
  }) {
    log.info('a => $a, b => $b');
  }

  dumpFunction03(a: null, b: true);
  //👻 INFO 2023-12-12 14:49:48.750 [caller info not available] a => null, b => true

  // 값 지정 필수 및 null 일경우 null 값 전달해야함
  // dumpFunction03();
  // dumpFunction03(b: true);

  // Optional positional parameter
  void dumpFunction04(String a, int b, [double? c = 1.1]) {
    log.info('a => $a, b => $b, c => $c');
  }

  dumpFunction04('hong', 1111, 10.4);
  dumpFunction04('hong', 2222);
// 👻 INFO 2023-12-12 14:53:13.049 [caller info not available] a => hong, b => 1111, c => 10.4
// 👻 INFO 2023-12-12 14:53:13.049 [caller info not available] a => hong, b => 2222, c => 1.1

// 고계 함수 (higher-order function)

  // final items = [1, 2, 3, 4, 5];
  final items = [1, 2, 3, 4, 5, 1, 2, 3, 4, 5, 6, 7];

  log.info('==== ==== ====');
  // reduce
  var result04 = items[0];
  for (var i = 0; i < items.length; i++) {
    if (items[i] % 3 == 0) {
      result04 = max(items[i], result04);
      break;
    }
  }
  log.info(result04);
  // 👻 INFO 2023-12-12 15:34:44.819 [caller info not available] 3

  log.info('==== ==== ====');

  log.info('==== ==== ====');
  // any
  var result03 = false;
  for (var i = 0; i < items.length; i++) {
    if (items[i] % 3 == 0) {
      result03 = true;
      break;
    }
  }
  log.info(result03);
  //👻 INFO 2023-12-12 15:31:01.424 [caller info not available] true

  log.info('==== ==== ====');
  // toSet()
  var result02 = [];
  var temp = <int>{};
  for (var i = 0; i < items.length; i++) {
    if (items[i] % 2 == 0) {
      temp.add(items[i]);
    }
  }
  result02 = temp.toList();
  log.info(result02);
  // 👻 INFO 2023-12-12 15:24:56.569 [caller info not available] [2, 4, 6]

  log.info('==== ==== ====');
  // toList()
  List result01 = [];
  items.forEach((element) {
    if (element % 2 == 0) {
      result01.add(element);
    }
  });
  log.info(result01);
  //👻 INFO 2023-12-12 15:21:06.282 [caller info not available] [2, 4]

  result01 = items.where((element) => element % 2 == 1).toList();
  log.info(result01);
  //👻 INFO 2023-12-12 15:21:06.282 [caller info not available] [1, 3, 5]

  log.info('==== ==== ====');
  // map
  for (var i = 0; i < items.length; i++) {
    if (items[i] % 2 == 0) {
      log.info(items[i]);
    }
  }
// 👻 INFO 2023-12-12 15:18:01.387 [caller info not available] 2
// 👻 INFO 2023-12-12 15:18:01.387 [caller info not available] 4

  items
      .where((element) => element % 2 == 1)
      .map((e) => 'item $e')
      .forEach(log.info);
// 👻 INFO 2023-12-12 15:18:01.389 [caller info not available] item 1
// 👻 INFO 2023-12-12 15:18:01.390 [caller info not available] item 3
// 👻 INFO 2023-12-12 15:18:01.390 [caller info not available] item 5

  log.info('==== ==== ====');
// where
  for (var i = 0; i < items.length; i++) {
    if (items[i] % 2 == 0) {
      log.info(items[i]);
    }
  }
// 👻 INFO 2023-12-12 15:15:49.179 [caller info not available] 2
// 👻 INFO 2023-12-12 15:15:49.179 [caller info not available] 4
  items.where((element) => element % 2 == 0).forEach(log.info);
// 👻 INFO 2023-12-12 15:15:49.180 [caller info not available] 2
// 👻 INFO 2023-12-12 15:15:49.180 [caller info not available] 4
}
