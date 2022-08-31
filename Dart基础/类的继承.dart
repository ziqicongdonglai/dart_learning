// Dart中的继承，与Java中相似，可以使用关键字extends继承父类，
// 使用关键字super引用父类。
class Father {
  myFunction() {
    print('father class');
  }
}

class Son extends Father {
  @override
  myFunction() {
    super.myFunction();
    print('son class');
  }
}

void main() {
  var f = Father();
  f.myFunction();

  var s = Son();
  s.myFunction();
}
