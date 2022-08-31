class ConstPonit {
  final num x;
  final num y;

  // 如果想提供一个状态永远不变的对像，
  // 在Dart中，我们可以创建一个编译时常量对象，节省开销。
  // 使用const修饰构造方法
  const ConstPonit(this.x, this.y);

  // 编译时常量对象，需使用const来创建对象
  static final ConstPonit origin = const ConstPonit(10, 20);
}

void main() {
  print(ConstPonit.origin.x);
  print(ConstPonit.origin.y);
}
