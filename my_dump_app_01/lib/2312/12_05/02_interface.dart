// 인터페이스(interface)

// 모든 메소드는 추상 메소드 여야 한다
// 필드를 가지지 않는다

class Shirt {
  String name;
  String kind;

  Shirt(
    this.name,
    this.kind,
  );

  void washShirt() {
    print('Shirt washShirt');
  }
}

abstract interface class CleaningService {
  Shirt washShirt(Shirt shirt) {
    return shirt;
  }

  Shirt washTowel(Shirt shirt) {
    return shirt;
  }

  Shirt washCoat(Shirt shirt) {
    return shirt;
  }
}

class DumpCleaningService implements CleaningService {
  @override
  washShirt(Shirt shirt) {
    return shirt;
  }

  @override
  Shirt washCoat(Shirt shirt) {
    return shirt;
  }

  @override
  Shirt washTowel(Shirt shirt) {
    return shirt;
  }
}
