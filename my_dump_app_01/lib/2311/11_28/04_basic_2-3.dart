import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();
void main() {
  // Numbers
  int a = 10;
  double b = 3.14;
  num c = 1; // num can be either int or double
  log.info("Numbers:");
  log.info("a: $a, b: $b, c: $c");

  // Strings
  String name = "John";
  String greeting = 'Hello, $name!';
  String multiLine = '''
    This is a multi-line string.
    It can cover multiple lines.
    ''';
  log.info("\nStrings:");
  log.info("name: $name");
  log.info("greeting: $greeting");
  log.info("multiLine: $multiLine");

  // Booleans
  bool isTrue = true;
  bool isFalse = false;
  log.info("\nBooleans:");
  log.info("isTrue: $isTrue");
  log.info("isFalse: $isFalse");

  // Lists
  List<int> numbers = [1, 2, 3];
  List<String> fruits = ["apple", "banana", "orange"];
  log.info("\nLists:");
  log.info("numbers: $numbers");
  log.info("fruits: $fruits");

  // Sets
  Set<int> numberSet = {1, 2, 3};
  Set<String> fruitSet = {"apple", "banana", "orange"};
  log.info("\nSets:");
  log.info("numberSet: $numberSet");
  log.info("fruitSet: $fruitSet");

  // Maps
  Map<String, int> ages = {"John": 30, "Jane": 25};
  Map<String, String> colors = {
    "apple": "red",
    "banana": "yellow",
    "orange": "orange"
  };
  log.info("\nMaps:");
  log.info("ages: $ages");
  log.info("colors: $colors");

  // Runes
  Runes input = new Runes('\u{1f600}');
  String smiley = String.fromCharCodes(input);
  log.info("\nRunes:");
  log.info("smiley: $smiley");

  // Symbols
  Symbol s = #test;
  log.info("\nSymbols:");
  log.info(s);
}
