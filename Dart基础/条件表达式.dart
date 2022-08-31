void main() {
  // String str1 = "Hello";
  // ?? expr1 ?? expr2
  // 如果expr1的值不等于null，则返回其值；
  // 否则执行表达式expr2并返回其结果。
  String? str1 = null;
  String str2 = "world";
  var result = str1 ?? str2.toUpperCase();
  print(result);
}
