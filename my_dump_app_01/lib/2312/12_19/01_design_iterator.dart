// Iterable 인터페이스 구현
abstract class MyIterable implements Iterable<int> {
  final List<int> _data = [1, 2, 3, 4, 5];

  @override
  Iterator<int> get iterator => _MyIterator(_data);
}

// Iterator 클래스 구현
class _MyIterator implements Iterator<int> {
  final List<int> _data;
  int _index = 0;

  _MyIterator(this._data);

  @override
  bool moveNext() {
    if (_index < _data.length) {
      _index++;
      return true;
    } else {
      return false;
    }
  }

  @override
  int get current => _data[_index - 1];
}
