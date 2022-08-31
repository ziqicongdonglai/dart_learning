// 实际上在Dart中，每个类都隐式的定义了一个包含所有实例成员的接口，
// 并且该类实现了这个接口。

// 因此，如果我们想实现某个接口，但有又不想继承，
// 则可以使用这种隐式接口机制。我们需要用到关键字implements

class People {
  void greet() {
    print("Hello");
  }
}

class Student implements People {
  @override
  void greet() {
    print("Hi, I'm Robot");
  }
}

// greet(People p) {
//   p.greet();
// }

test(People p) {
  p.greet();
}

void main() {
  test(Student());
}
