void main() {
  // 1.通过显式指定类型来定义变量
  String name = '张三';
  num age = 18;
  print(name);
  print(age);

// 2.使用关键字var，不指定类型，VM会推导
  var address = '羊山北路';
  var id = 101;
  print(address);
  print(id);

  // 3.代码错误，无法运行，number变量已确定为int类型
  // var number = 19;
  // number = '2022';

// 想动态改变变量的数据类型，应当使用dynamic或Object来定义变量。
// 4.使用 dynamic 声明变量
  dynamic var1 = 'hello';
  var1 = 10;
  print(var1);

  // 5.使用 Object 声明变量
  Object var2 = 20.2;
  var2 = 'Alice';
  print(var2);
}
