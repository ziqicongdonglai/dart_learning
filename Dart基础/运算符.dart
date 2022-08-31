void main() {
  // 算术运算符
  var a = 10;
  var b = 3;
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a % b);
  // Dart特有 整除运算符
  // ~/
  // 与普通除号的区别是将相除后的结果取整返回。
  print(a ~/ b);

  // 类型判定运算符
  var str = '48';
  // 如果对象是指定的类型就返回 True
  print(str is String);
  // 如果对象不是指定的类型返回 True
  print(str! is String);
  // as 用于类型转换
}
