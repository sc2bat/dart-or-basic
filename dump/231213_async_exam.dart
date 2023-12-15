// ignore: slash_for_doc_comments
import 'dart:io';

/**
 * 연습 1. 파일 처리
1. sample.csv 파일을 읽어와서 “한석봉" 이라는 문자열이 있는지 찾고, 있다면 sample_copy.csv 파일에 “김석봉"으로 수정하는 함수를 작성하시오.
(async - await 사용할 것)

sample.csv

2. 위 함수를 실행할 때 파일을 찾을 수 없는 경우 예외 처리를 수행하시오.
 */

Future<void> dumpFunction() async {
  print('start dumpFunction');

  print('done dumpFunction');
}

void main() {
  print('start');

  final filePath = 'dump/';
  final fileName = 'sample.csv';
  final csvFile = File(filePath + fileName);
  List<String>? csvStrings = csvFile.readAsLinesSync();

  print(csvStrings);

  // List<List<dynamic>> rowsAsListOfValues = const CsvToListConverter().convert(yourString);

  print('done');
}
