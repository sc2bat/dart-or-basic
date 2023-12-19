import 'dart:math';

int findMax(List<int> intList) =>
    intList.reduce((value, element) => max(value, element));
