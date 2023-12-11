import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

/*
예외 (Exception)

프로그램을 설계할 때
실행시에 예외 상황이 발생 할 가능성이 있는 것을 예측하여, 사전에 예외 처리가 되도록 할 필요가 있음.
이럴 때 적절한 조치가 없으면 프로그램은 에러가 나며 죽어 버림.
예상 외의 상황에 적절한 조치를 취하는 것을 배운다.

문법 에러 (syntax error) // 컴파일시 에러
실행 시 에러 (runtime error) // 실행시 강제종료
논리 에러 (logic error) // 실행시 예상외의 결과값 출력

*/

void main(List<String> args) {
  // 예외처리 기본
  try {
    // somethingIsWrong();
  } catch (e) {
    log.info(e);
    throw Exception('try catch error~~');
  }

  void somethingIsWrong() {
    throw const FormatException('erorrrrrr');
  }

  // rethrow 예외를 부분적으로 처리
  try {
    int a = 10;
  } catch (e) {
    log.info('${e.runtimeType}');
    rethrow;
  }

  // finally 예외 발생 여부와 상관 없이 어떤 코드를 실행
  try {
    log.info('normal');
  } catch (e) {
    // 예외를 먼저 처리
    log.info('errorrorororo');
  } finally {
    // 그 후에 실행
    log.info('finally 코드를 실행');
  }

  try {
    log.info('normal');
  } finally {
    // 에러가 발생해도 항상 실행
    log.info('finally 코드를 실행');
  }
}
