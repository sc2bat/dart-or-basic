import 'dart:io';

import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

void copy(String source, String target) {
  var oriPath = 'dump/';

  final readFile = File(oriPath + source);
  try {
    final readTxt = readFile.readAsStringSync();
    final writeFile = File(oriPath + target);
    writeFile.writeAsStringSync(readTxt);
  } catch (e) {
    throw Exception('read error $e');
  }

  print('copy done');
}

void main() {
  // var oriPath = 'dump/';
  var sourcePath = '231211_test002.txt';
  var targetPath = '231211_test003_copy.txt';

  copy(sourcePath, targetPath);

/**
 * 
  // 특정 경로에 파일이 있는 지 확인
  final filePath = '/my_dump_app_01/lib/2312/12_11/231211_test001.txt'; // 파일 경로

  try {
    final file = File(filePath);

    if (file.existsSync()) {
      print('File exists: $filePath');
    } else {
      print('File does not exist: $filePath');
    }
  } catch (e) {
    print('Error checking file existence: $e');
  }
 */
}
