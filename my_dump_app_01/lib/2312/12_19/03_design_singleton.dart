// class MySingleton {
//   // 정적 멤버 변수로 유일한 인스턴스를 저장
//   static MySingleton _instance;

//   // private 생성자로 외부에서 인스턴스 생성을 방지
//   MySingleton._();

//   // 유일한 인스턴스를 반환하는 정적 메서드
//   static MySingleton getInstance() {
//     if (_instance == null) {
//       // 인스턴스가 없을 경우 생성
//       _instance = MySingleton._();
//     }
//     return _instance;
//   }

//   void printMessage() {
//     print("Hello from MySingleton!");
//   }
// }

// void main() {
//   // MySingleton의 인스턴스 얻기
//   var singleton1 = MySingleton.getInstance();
//   var singleton2 = MySingleton.getInstance();

//   // 두 인스턴스가 동일한지 확인
//   print(identical(singleton1, singleton2)); // true

//   // 메시지 출력
//   singleton1.printMessage();
// }
