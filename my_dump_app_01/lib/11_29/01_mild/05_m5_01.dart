import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

/**
 * M5. 부족한 카드 찾기
당신은 1, 2, 3, 4, 5의 숫자가 적힌 5 종류의 카드를 모으고 있습니다.
4번째까지 모여서 1장만 더 모으면 되는 상황에 카드가 섞여 버렸습니다.
4장의 카드 정보는 줄 바꿈으로 구분하여 입력되므로 1~5의 카드 중 부족한 카드의 숫자를
출력 합니다.
미션:
- 리스트 [1,3,2,5] 중 빠진 수를 출력 하시오
출력예시:
4
—----------------------------------------------------------------------
 */

void main() {
  // log.info('hello world');
  List<int> cardList = [1, 3, 2, 5];

  cardList.sort();
  log.info(cardList);

  for (int i = 1; i <= cardList.length; i++) {
    if (i != cardList[i - 1]) {
      log.info('빠진수는 $i');
    }
  }

//   👻 INFO 2023-11-29 16:30:38.098 [caller info not available] [1, 2, 3, 5]
// 👻 INFO 2023-11-29 16:30:38.098 [caller info not available] 빠진수는 4
}
