/*   需要注意，final定义的常量是运行时常量，而const常量则是编译时常量，
  也就是说final定义常量时，其值可以是一个变量，而const定义的常量，其值必须是一个字面常量值。 */
void main() {
  // 1.使用 final 定义常量
  final height = 10.9;
  print(height);

  // 2.使用 const 定义常量
  const PI = 3.14;
  print(PI);

  // 3.两者区别
  final time1 = DateTime.now(); // 正确
  print(time1);

  // const time2 = DateTime.now(); // 错误

  const list1 = const [1, 2, 3];
  print(list1);
}
