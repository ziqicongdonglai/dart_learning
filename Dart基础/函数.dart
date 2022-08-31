// String 显示指定参数类型
// String greet(String name) {
//   return 'hello,$name';
// }

// 当没有指定返回值的时候，函数会返回null。
// 强行使用void来修饰函数，函数真无返回值
void greet(String name) {
  print('hello,$name');
}

void main() {
  // print(greet('张三'));
  greet('张三');
}
