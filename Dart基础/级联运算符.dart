class Person {
  String? name;
  int? age;
  // 可选参数
  Person({this.name, this.age});

  void setName(String name) {
    this.name = name;
  }

  void setAge(int age) {
    this.age = age;
  }

  void printInfo() {
    print('name:$name,age:$age');
  }
}

void main() {
  // .. 级联运算符
  // 无需返回对象本身
  // 即可连续的流式调用该对象的其他方法。
  new Person()
    ..setName('Alice')
    ..setAge(20)
    ..printInfo();
}
