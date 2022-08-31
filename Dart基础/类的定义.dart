// Dart中定义一个类
// Dart中的类与Java中的相似，不同的是，Dart中没有private、public这些成员访问修饰符。
// 如果是类私有的成员，不希望外面访问，只需要在成员变量之前加上一个下划线_变为私有即可。
class Person {
  String? name;
  int? _age;

  // Person(String name, int age) {
  //   this.name;
  //   this.age = age;
  // }

  // 在构造方法中初始化成员变量时，可使用如下写法简化
  Person(this.name, this._age);

  // 如需处理其他变量时，也可单独对其操作
  // Person(this.name, this.age, String address) {
  //   print(address);
  // }
  // 注意，构造方法不能重载，以上注释掉
}

void main() {
  Person p = Person('zhangsan', 20);
  print(p.name);
  print(p._age);
}
