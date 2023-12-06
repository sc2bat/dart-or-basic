// ignore_for_file: slash_for_doc_comments

/**
 * 
13-2
이런 클래스가 선언되어 있다.
다음 물음에 답하시오

X obj = A(); 로 A인스턴스를 생성한 후, 변수 obj에서 호출할 수 있는 메소드를 a(), b(), c() 중에 골라보시오
 */

abstract interface class X {
  void a();
}

abstract class Y implements X {
  void b();
}

class A extends Y {
  @override
  void a() {
    // TODO: implement a
    print('Y 111 aaa');
  }

  @override
  void b() {
    // TODO: implement b
    print('Y 111 bbb');
  }

  void c() {
    print('Y 111 ccc');
  }
}

class B extends Y {
  @override
  void a() {
    // TODO: implement a
    print('Y 222 aaa');
  }

  @override
  void b() {
    // TODO: implement b
    print('Y 222 bbb');
  }

  void c() {
    print('Y 222 ccc');
  }
}

/**
 * 

Y y1 = A();
Y y2 = B(); 로 A와 B의 인스턴스를 생성한 후 
y1.a();
y2.a(); 를 실행했을 때에 화면에 표시되는 내용을 말하시오.

13-3
문제 13-2 에서 이용한 A클래스나 B클래스의 인스턴스를 각각 1개씩 생성하여, List 에 차례로 담는다.
그 후에 List 의 요소를 차례대로 꺼내 각각의 인스턴스의 b() 메소드를 호출 하여야 한다. 이상을 전제로 다음 물음에 답하시오.
List 변수의 타입으로 무엇을 사용하여야 하는가
위에서 설명하고 있는 프로그램을 작성하시오

 */

void main() {
  Y y1 = A();
  Y y2 = B();

  y1.a();
  y2.a();
  // result 13-2
  //   Y 111 aaa
  // Y 222 aaa

  Y element03 = A();
  Y element04 = B();
  Y element05 = A();
  Y element06 = B();
  Y element07 = A();
  Y element08 = B();
  List<Y> elements = [];

  elements.add(element03);
  elements.add(element04);
  elements.add(element05);
  elements.add(element06);
  elements.add(element07);
  elements.add(element08);

  print('start elements');
  for (var element in elements) {
    element.a();
  }
  // Y 111 aaa
  // Y 222 aaa
  // Y 111 aaa
  // Y 222 aaa
  // Y 111 aaa
  // Y 222 aaa
}
