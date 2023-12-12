// 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오
// 2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오
// 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
// 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오
// 5. 밀라노에 거래자가 있는가?
// 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오
// 7. 전체 트랜잭션 중 최대값은 얼마인가?
// 8. 전체 트랜잭션 중 최소값은 얼마인가?

import 'dart:math';

import 'package:simple_logger/simple_logger.dart';

class Trader {
  String name;
  String city;

  Trader(this.name, this.city);
}

class Transaction {
  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);
}

final transactions = [
  Transaction(Trader("Brian", "Cambridge"), 2011, 300),
  Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
  Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
  Transaction(Trader("Mario", "Milan"), 2012, 710),
  Transaction(Trader("Mario", "Milan"), 2012, 700),
  Transaction(Trader("Alan", "Cambridge"), 2012, 950),
];

final log = SimpleLogger();

void main() {
  // 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오
  var transactions2011 =
      transactions.where((element) => element.year == 2011).toList();
  log.info(transactions2011);
  // 👻 INFO 2023-12-12 15:58:24.669 [caller info not available] [Instance of 'Transaction', Instance of 'Transaction']
  // transactions.where((e) => e.year == 2011).map((e) => e.trader.name);
  log.info('1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오');
  transactions2011 = transactions
      .where((element) => element.year == 2011)
      .toList()
    ..sort((a, b) => a.value.compareTo(b.value));
  transactions2011
      .map((transactions) => transactions.trader.name)
      .forEach(log.info);
//   👻 INFO 2023-12-12 16:06:26.494 [caller info not available] Brian
// 👻 INFO 2023-12-12 16:06:26.494 [caller info not available] Raoul

  // 2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오
  log.info('2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오');
  var transactionsCity = transactions.map((e) => e.trader.city).toSet();
  log.info(transactionsCity);

  // 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
  log.info('3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오');
  var transactionCambridge = transactions
      .where((element) => element.trader.city == 'Cambridge')
      .toList()
    ..sort((a, b) => a.value.compareTo(b.value));
  transactionCambridge.map((e) => e.trader.name).forEach(log.info);
//   👻 INFO 2023-12-12 16:18:25.193 [caller info not available] Brian
// 👻 INFO 2023-12-12 16:18:25.193 [caller info not available] Raoul
// 👻 INFO 2023-12-12 16:18:25.193 [caller info not available] Alan
// 👻 INFO 2023-12-12 16:18:25.193 [caller info not available] Raoul

// 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오
  log.info('4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오');
  var transactionName = transactions.map((e) => e.trader.name).toSet().toList()
    ..sort((a, b) => a.compareTo(b));
  log.info(transactionName);
  // 👻 INFO 2023-12-12 16:24:24.941 [caller info not available] [Alan, Brian, Mario, Raoul]

// 5. 밀라노에 거래자가 있는가?
  log.info('5. 밀라노에 거래자가 있는가?');
  log.info(transactions.any((element) => element.trader.city == 'Milan'));
  // 👻 INFO 2023-12-12 17:09:36.885 [caller info not available] true

// 6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오
  log.info('6. 케임브리지에 거주하는 거래자의 모든 트랙잭션값을 출력하시오');
  transactions
      .where((element) => element.trader.city == 'Cambridge')
      .toList()
      .map((e) => e.value)
      .forEach(log.info);
//   👻 INFO 2023-12-12 17:11:06.324 [caller info not available] 300
// 👻 INFO 2023-12-12 17:11:06.324 [caller info not available] 1000
// 👻 INFO 2023-12-12 17:11:06.324 [caller info not available] 400
// 👻 INFO 2023-12-12 17:11:06.324 [caller info not available] 950

// 7. 전체 트랜잭션 중 최대값은 얼마인가?
  log.info('7. 전체 트랜잭션 중 최대값은 얼마인가?');
  log.info(
      '최대값은 ${transactions.toList().map((e) => e.value).reduce((value, element) => max(value, element))}');
  // 👻 INFO 2023-12-12 17:13:07.384 [caller info not available] 최대값은 1000

// 8. 전체 트랜잭션 중 최소값은 얼마인가?
  log.info('8. 전체 트랜잭션 중 최소값은 얼마인가?');
  log.info(
      '최소값은 ${transactions.toList().map((e) => e.value).reduce((value, element) => min(value, element))}');
  // 👻 INFO 2023-12-12 17:13:45.364 [caller info not available] 최소값은 300

  // https://api.dart.dev/stable/3.2.1/dart-collection/dart-collection-library.html
}
