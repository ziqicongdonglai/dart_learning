// 首先定义三个父类
class Father1 {
  a() {
    print("this is a func");
  }

  common() {
    print("common Father1");
  }
}

class Father2 {
  b() {
    print("this is b func");
  }

  common() {
    print("common Father2");
  }
}

class Father3 {
  c() {
    print("this is c func");
  }

  common() {
    print("common Father3");
  }
}

// class Son extends Father1 with Father2, Father3 {}

// 注意，以上继承写法中，也可以直接使用with，等价于如下写法
// class Son with Father1,Father2,Father3 {}

// 几个父类中同名的函数，生效的为with的最后一个父类中的方法
// 下面的子类 打印 common Father2
// 上面的with最后是 Father3 所以打印common Father3
class Son extends Father1 with Father3, Father2 {}

void main() {
  var obj = new Son();
  obj.common();
  obj.a();
  obj.b();
  obj.c();
}
