// 연습문제 2-1

// ignore: slash_for_doc_comments
import 'package:simple_logger/simple_logger.dart';

/**
 * 
 * 
다음 정보를 저장하기 좋은 컬렉션을 List, Set, Map 중 고르시오

1. 대한민국의 도시 이름 모음 (순서 상관 없음)
2. 10명 학생의 시험 점수
3. 대한민국의 도시별 인구수 (순서 상관 없음)

 */

final log = SimpleLogger();

void main() {
  // 1. 대한민국의 도시 이름 모음 (순서 상관 없음)
  // 순서 상관없으며 같은 도시가 있으면 안되기에 중복 허용하지 않는 Set 으로
  Set<String> cities = {};
  cities.add('서울특별시');
  cities.add('부산광역시');
  cities.add('인천광역시');
  cities.add('대구광역시');
  cities.add('대전광역시');
  cities.add('광주광역시');
  log.info(cities);
  // 👻 INFO 2023-12-04 18:55:22.636 [caller info not available] {서울특별시, 부산광역시, 인천광역시, 대구광역시, 대전광역시, 광주광역시}

  // 2. 10명 학생의 시험 점수: List
  // List는 순서대로 중복된 요소를 허용 시험 점수를 순서대로 저장
  List<int> grades = [];
  grades.add(98);
  grades.add(58);
  grades.add(68);
  grades.add(43);
  grades.add(25);
  grades.add(67);
  grades.add(88);
  log.info(grades);
// 👻 INFO 2023-12-04 18:55:22.637 [caller info not available] [98, 58, 68, 43, 25, 67, 88]

//  3. 대한민국의 도시별 인구수
// 순서 관계 없음, 도시별로 key 값 지정 도시별 인구수를 value 로 지정
  Map<String, Object> cityPopulationMap = {};
  cityPopulationMap['서울특별시'] = 9407540;
  cityPopulationMap['부산광역시'] = 3320276;
  cityPopulationMap['인천광역시'] = 2964820;
  cityPopulationMap['대구광역시'] = 2365619;
  cityPopulationMap['대전광역시'] = 1446749;
  for (var population in cityPopulationMap.entries) {
    log.info('${population.key} 도시의 인구수는 ${population.value}');
  }
// 👻 INFO 2023-12-04 19:00:46.171 [caller info not available] 서울특별시 도시의 인구수는 9407540
// 👻 INFO 2023-12-04 19:00:46.171 [caller info not available] 부산광역시 도시의 인구수는 3320276
// 👻 INFO 2023-12-04 19:00:46.171 [caller info not available] 인천광역시 도시의 인구수는 2964820
// 👻 INFO 2023-12-04 19:00:46.171 [caller info not available] 대구광역시 도시의 인구수는 2365619
// 👻 INFO 2023-12-04 19:00:46.171 [caller info not available] 대전광역시 도시의 인구수는 1446749
}
