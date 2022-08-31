import 'dart:math';

// 初始化列表位于构造方法的小括号与大括号之间，在初始化列表之前需添加一个冒号。
// 初始化列表是由逗号分隔的一些赋值语句组成。
// 它适合用来初始化 final修饰的变量
// 初始化列表的调用是在构造方法之前，也就是在类完成实例化之前，因此初始化列表中是不能访问 this的
// 它的作用也 类似 Java的 静态代码块 static {...}
class Ponit {
  final num x;
  final num y;
  final num distance;

  Ponit(x, y)
      : x = x,
        y = y,
        distance = sqrt(x * x + y * y) {
    print('这是构造方法');
  }
}

void main() {
  var p = new Ponit(2, 3);
  print(p.distance);
}
