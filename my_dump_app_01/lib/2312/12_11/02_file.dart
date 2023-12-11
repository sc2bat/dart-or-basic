// ignore: file_names
import 'dart:io';

import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

void main() {
  // const fileNm = ;
  try {
    final file = File('test001.txt');
    file.writeAsStringSync('HELLO WORLD');
  } catch (e) {
    log.info(e);
  }

  // final text = file.readAsStringSync();
  // log.info(text);

  // flutter 에서는 읽고쓰기가 자유롭게 안되는 듯
  // dart 에서 별도의 프로그램으로 실행됨을 확인함

  File('file.txt').readAsString().then((String contents) {
    print(contents);
  });

  final filename = 'file.txt';
  var file = File(filename).writeAsString('some content');
}
