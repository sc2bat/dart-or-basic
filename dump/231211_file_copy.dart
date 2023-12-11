import 'dart:io';

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

  // final readFile = File(oriPath + sourcePath);
  // final readTxt = readFile.readAsStringSync();

  // final writeFile = File(oriPath + targetPath);
  // writeFile.writeAsStringSync(readTxt);

  // print(readTxt);

  copy(sourcePath, targetPath);
}
