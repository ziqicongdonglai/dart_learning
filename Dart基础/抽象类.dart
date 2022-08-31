// Dart语言没有提供interface关键字来定义接口，
// 但是Dart语言中保留了抽象类，同Java，
// 使用abstract关键字来修饰抽象类。
// 而Dart中的抽象类，实际上就相当于Java中的接口。
abstract class Base {
  // 省略函数体即可定义抽象方法，不需加关键字
  // 注意，抽象类是不能被实例化的，
  // 子类继承抽象类时，必须实现全部抽象方法。
  func1();
  func2();
}
