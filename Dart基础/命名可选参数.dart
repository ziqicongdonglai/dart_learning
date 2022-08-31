// 定义
// ?空安全
// 命名可选参数 使用花括号来定义参数列表
enableFlags({bool? bold, bool? hidden}) {
  // do sth
  print(bold);
  print(hidden);
}

// = 赋予默认值
void add({int x = 1, int y = 1, int z = 2}) {
  print(x + y + z);
}

void main() {
  // 命名可选参数
  // 调用的时候，用参数名：参数值传
  enableFlags(hidden: true);
  enableFlags(bold: false, hidden: true);
  add(x: 10);
}
