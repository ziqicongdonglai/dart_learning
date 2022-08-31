// 要注意，在创建对象时，new关键字并不是必须的，可以省略不写。
// 在写Flutter界面时，不建议写new关键字实例化对象，
// 因为Flutter框架中没有类似的xml语言来描述UI界面，
// 界面也是使用Dart语言来写，在使用Dart写UI时，
// 要保持代码的简洁和结构化，省略new会更友好。
class Person {
  String userName;

  Person(this.userName);

  // 方法名前加get关键字
  String get name {
    return "user:" + this.userName;
  }

  // 方法名前加set关键字
  set name(String name) {
    this.userName = name;
  }
}

void main() {
  var p = Person("zhangsan");
  print(p.name); // user:zhangsan
  p.name = "Jack";
  print(p.name); // user:Jack
}
