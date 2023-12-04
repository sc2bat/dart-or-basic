void main() {
  final List<int> numbers = [];

  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  numbers.add(4);
  numbers.add(5);

  print(numbers);

  final numbers2 = [];
  numbers2.add(1);
  numbers2.add('q');
  numbers2.add(true);
  numbers2.add(null);

  print(numbers2);

  for (var num in numbers2) {}
}
