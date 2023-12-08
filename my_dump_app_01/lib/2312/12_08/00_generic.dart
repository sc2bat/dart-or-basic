void main() {
  dynamic i = 10;

  // i.forEach((num) => print(num));
  // print(i.length);
  // i[0] = 10;
  // i.asdfasdfas();
  // i.asdfa().asdfwefwf();

  Object o = 10;

  Pocket pocket = Pocket();

  pocket.put(o);
  var data = pocket.get();
  print(data.runtimeType);
  if (data is int) {
    print(data + 10);
  }
  if (data != null) {
    print(data + 10);
  }
}

class Pocket<E> {
  E? _data;

  void put(E data) => _data = data;

  E? get() => _data;
}
