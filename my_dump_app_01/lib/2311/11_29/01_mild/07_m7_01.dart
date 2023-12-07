import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

/**
 * 
 * M7. 태풍의 간격
당신은 기상청 데이터 분석가로써 태풍 상륙 간격에 대해 데이터를 만들어야 한다.
샘플로 5개의 태풍 상륙일 정보가 주어지면, 다음 태풍이 몇 일 간격으로 발생했는지 일수를
구하는 프로그램을 작성하시오.
미션:
- 태풍 상륙일 [5,8,19,25,31]
출력예시:
3
11
6
6

 */
void main() {
  List<int> days = [5, 8, 19, 25, 31];

  for (int i = 0; i < days.length - 1; i++) {
    log.info('태풍상륙일 ${days[i + 1] - days[i]}');
  }

// 👻 INFO 2023-11-29 16:50:52.687 [caller info not available] 태풍상륙일 3
// 👻 INFO 2023-11-29 16:50:52.688 [caller info not available] 태풍상륙일 11
// 2 👻 INFO 2023-11-29 16:50:52.688 [caller info not available] 태풍상륙일 6
}
