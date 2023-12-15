import 'dart:io';

import 'package:csv/csv.dart';
import 'package:path_provider/path_provider.dart';
import 'package:simple_logger/simple_logger.dart';

// ignore: slash_for_doc_comments
/**
 * 연습 1. 파일 처리
1. sample.csv 파일을 읽어와서 “한석봉" 이라는 문자열이 있는지 찾고, 있다면 sample_copy.csv 파일에 “김석봉"으로 수정하는 함수를 작성하시오.
(async - await 사용할 것)

sample.csv

2. 위 함수를 실행할 때 파일을 찾을 수 없는 경우 예외 처리를 수행하시오.
 */

// my_dump_app_01/2312/12_13/

final log = SimpleLogger();

Future<void> dumpFunction() async {
  log.info('start dumpFunction');

  log.info('done dumpFunction');
}

Future<void> main() async {
  log.info('start');

  Directory documentsDirectory = await getApplicationDocumentsDirectory();
  log.info(documentsDirectory);

  String filePath = '${documentsDirectory.path}/sample.csv';

  File csvFile = File(filePath);
  List<List<dynamic>> rows =
      const CsvToListConverter().convert(csvFile.readAsStringSync());

  log.info(rows);

  log.info('done');
}
