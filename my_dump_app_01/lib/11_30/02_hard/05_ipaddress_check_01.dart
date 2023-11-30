// ignore_for_file: slash_for_doc_comments

/**
 * ⭐️⭐️ IP 어드레스 검사
 * 
 * 
 * 당신은 어느 프로그램에서 IP 주소를 입력 하는 기능의 일부를 개발하고 있습니다.
  입력은 "." 과 "숫자" 로 구성된 길이가 N인 문자열이 입력됩니다.
  입력 된 IP 주소가 서식에 적합한 지 판정하여 맞으면 True, 다르면 False를 출력하는 프로그램
  을 작성하십시오.
  판별할 IP 주소는 IPv4로 정의 된 IP 주소이고 형식은 다음과 같습니다.
  점(.) 으로 구분 된 10 진수 4개의 숫자로 표시
  숫자의 범위는 0에서 255 사이의 수

    예)
      100.23.103.20
      123.11.22.33
      14.33.103.20
      102.233.13.2

  입력
    첫 번째 행에는 입력될 IP 주소의 갯수 M을 입력합니다.
    두 번째 행부터는 IP 주소를 M행 만큼 입력합니다.
    출력
    IPv4 의 주소로써 올바르면 True, 그렇지 않으면 False를 개행을 하여 M행으로 출력합니다.
    입력 예1
    4
    192.168.0.1
    192.168.0.2
    192.168.0.3
    192.168.0.4

  출력 예1
    True
    True
    True
    True

  입력 예2
    4
    192.400.1.10.1000...
    4.3.2.1
    0..33.444...
    1.2.3.4

  출력 예2
    False
    True
    False
    True

 */
import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

void main() {
  int ipM = 4;
  List<String> ipList = [];
  ipList.add('100.23.103.20');
  ipList.add('123.11.22.33');
  ipList.add('14.33.103.20');
  ipList.add('102.233.13.2');
  ipList.add('1.2.3.4');
  ipList.add('4');
  ipList.add('192.400.1.10');
  ipList.add('255.255.255.100.1000');
  ipList.add('0.33.33.444');
  ipList.add('0.33.33.4...');

  List<bool> boolResult = [];

  for (int i = 0; i < ipList.length; i++) {
    List<String> ipSplit = ipList[i].split('.');
    // log.info(ipSplit);
    if (ipSplit.length != ipM) {
      boolResult.add(false);
      continue;
    } else {
      bool boolChk = true;
      for (int j = 0; j < ipSplit.length; j++) {
        if (int.parse(ipSplit[j]) < 0 || int.parse(ipSplit[j]) > 255) {
          boolChk = false;
          break;
        }
      }
      boolResult.add(boolChk);
    }

    // log.info(ipList[i]);
    // log.info(boolResult[i]);
  }

  log.info(boolResult);
}
