import 'dart:io';
import 'package:flutter/widgets.dart';
import 'package:path_provider/path_provider.dart';
import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

void writeToFile(String content) async {
  try {
    WidgetsFlutterBinding.ensureInitialized(); // 초기화 추가

    // 앱의 문서 디렉토리에 접근하기 위해 path_provider 사용
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    log.info('qwerqwer');
    log.info(documentsDirectory);
    log.info('qwerqwer');
    log.info(documentsDirectory.path);
    log.info('qwerqwer');
    String fileOriPath = 'my_dump_app_01/2312/12_13';
    String filePath = '${documentsDirectory.path}/$fileOriPath/example.txt';

    // 파일 쓰기
    File file = File(filePath);
    await file.writeAsString(content);

    print('File written successfully at: $filePath');
  } catch (e) {
    print('Error writing to file: $e');
  }
}

void main() {
  String contentToWrite = 'Hello, this is some content to write to the file.\n';

  writeToFile(contentToWrite);
}
