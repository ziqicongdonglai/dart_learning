// 定义匿名函数，并赋值给变量 fun
// 注意，函数体最后的花括号处必须有分号结束。
var fun = (x, y) {
  return x + y;
};

// 箭头函数
add(num a, num b) => a + b;

// 匿名箭头函数
var fun1 = (String s1, String s2) => s1 + s2;

void main() {
  print(fun(3, 4));
  print(add(3.3, 4.4));
}
