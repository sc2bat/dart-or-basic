import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

// ignore: slash_for_doc_comments
/**
 * 자판기 알고리즘을 구현하는 문제입니다. 아래의 조건을 참고하여 Dart 언어를 사용하여
자판기를 시뮬레이션하는 코드를 작성해보세요.
물품 정보:
물품은 "초콜릿", "빼빼로", "환타", "사이다" 4가지가 있습니다.
각 물품의 가격은 각각 500원, 600원, 1000원, 1100원입니다.
물품 수량:
각 물품은 초기에 5개씩 재고가 있습니다.
자판기 기능:
물품명, 가격, 재고를 보여줍니다.
돈이 충분하면 해당 물품을 구매하고, 거스름돈을 출력합니다.
재고가 없거나, 돈이 부족하면 실패 메시지를 출력합니다.
구매 시 해당 물품의 재고를 감소시킵니다.
미션:
빼빼로 1개를 5000원 지폐를 이용해 구매하시오
출력예시:
===== 자판기 상태 =====
초콜릿 - 가격: 500원, 수량: 5개
빼빼로 - 가격: 600원, 수량: 5개
환타 - 가격: 1000원, 수량: 5개
사이다 - 가격: 1100원, 수량: 5개
======================
[빼빼로 구매 성공] 가격: 600원, 거스름돈: 4400원, 남은 수량: 4개
===== 자판기 상태 =====
초콜릿 - 가격: 500원, 수량: 5개
빼빼로 - 가격: 600원, 수량: 4개
환타 - 가격: 1000원, 수량: 5개
사이다 - 가격: 1100원, 수량: 5개
======================
 * 
 */

class VendingMachine {
  Map<String, int> inventory = {
    '초콜릿': 5,
    '빼빼로': 5,
    '환타': 5,
    '사이다': 5,
  };

  Map<String, int> prices = {
    '초콜릿': 500,
    '빼빼로': 600,
    '환타': 1000,
    '사이다': 1100,
  };

  void displayStatus() {
    log.info('===== 자판기 상태 =====');
    for (var item in inventory.keys) {
      log.info('$item - 가격: ${prices[item]}원, 수량: ${inventory[item]}개');
    }
    log.info('======================');
  }

  void purchaseItem(String item, int money) {
    if (inventory[item]! > 0 && money >= prices[item]!) {
      int change = money - prices[item]!;
      inventory[item] = (inventory[item] ?? 0) - 1;
      log.info(
          '[$item 구매 성공] 가격: ${prices[item]}원, 거스름돈: $change원, 현재 수량: ${inventory[item]}개');
    } else if (inventory[item]! <= 0) {
      log.info('[$item 구매 실패] 수량 부족');
    } else {
      log.info('[$item 구매 실패] 금액 부족');
    }
  }
}

void main() {
  VendingMachine vendingMachine = VendingMachine();

  log.info('===== 자판기 초기 상태 =====');
  vendingMachine.displayStatus();
  log.info('======================');

  // 빼빼로 1개를 5000원 지폐로 구매
  log.info('[구매 시도] 빼빼로 1개를 5000원 지폐로 구매');
  vendingMachine.purchaseItem('빼빼로', 5000);

  log.info('===== 자판기 최종 상태 =====');
  vendingMachine.displayStatus();
  log.info('======================');
}
