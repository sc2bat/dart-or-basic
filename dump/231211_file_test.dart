import 'dart:io';

void main() {
  const filePath = 'dump/';
  final testFile = File(filePath + '231211_test002.txt');
  testFile.writeAsStringSync('test002');
}
