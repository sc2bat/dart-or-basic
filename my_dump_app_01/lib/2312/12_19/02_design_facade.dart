// // 복잡한 서브시스템 클래스들
// class SubsystemA {
//   void operationA() => print("Subsystem A operation");
// }

// class SubsystemB {
//   void operationB() => print("Subsystem B operation");
// }

// class SubsystemC {
//   void operationC() => print("Subsystem C operation");
// }

// // 패사드 클래스
// class Facade {
//   SubsystemA _subsystemA;
//   SubsystemB _subsystemB;
//   SubsystemC _subsystemC;

//   Facade() {
//     _subsystemA = SubsystemA();
//     _subsystemB = SubsystemB();
//     _subsystemC = SubsystemC();
//   }

//   // 클라이언트에게 간단한 인터페이스 제공
//   void operation() {
//     print("Facade operation:");
//     _subsystemA.operationA();
//     _subsystemB.operationB();
//     _subsystemC.operationC();
//   }
// }

// // 클라이언트 코드
// void main() {
//   // 패사드를 사용하여 복잡한 시스템에 간단한 인터페이스 제공
//   var facade = Facade();
//   facade.operation();
// }
