class Person {
  String? name;
  int? age;
  Person(name, age);
}

void main() {
  var p = Person('aaa', 12);
  // is 判断是否为 指定类型
  print(p is Person);
  // (p as Person).name = 'Alice';
  // print(p.name);
}
