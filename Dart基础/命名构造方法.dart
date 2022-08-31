class Person {
  String? userName;
  int? age;

  Person(this.userName, this.age);

  // 命名构造方法
  // 注意，使用命名构造方法可以为一个类实现多个构造方法，
  // 也可以更清晰的表明意图。
  // Person.fromData(Map data) {
  //   this.userName = data['name'];
  //   this.age = data['age'];
  // }

  Person.createData(Map data) {
    this.userName = data['name'];
    this.age = data['age'];
  }
}

void main() {
  // 使用命名构造方法创建对象
  // Person p = Person.fromData({"name": "Dad", "age": 22});
  // Person p = Person.fromData({"name": "Dad"});
  Person p = Person.createData({"name": "Dad"});
  print(p.userName); // Dad
  print(p.age); // null
}
