// 位置可选参数使用中括号来定义参数列表
/* 注意一下命名可选参数与位置可选参数的区别，
前者中的参数与顺序无关，无需按顺序传参，且传参数时需使用冒号；
后者与顺序相关，传参必须依照顺序。 */
add(int x, [int y = 1, int z = 2]) {
  int result = x;
  if (y != null) {
    result = result + x;
  }
  if (z != null) {
    result = result + z;
  }
  print(result);
}

void main() {
  add(10);
  add(10, 20);
  add(10, 20, 30);
}
