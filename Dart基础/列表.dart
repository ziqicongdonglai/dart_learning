void main() {
  // 创建列表
  var list = [1, 2, 3];
  // 打印 list 变量的类型
  print(list.runtimeType.toString());
  // 下标从0开始，使用length可以访问list的长度
  print(list[0]);
  print(list.length);

  // 可以使用add添加元素
  list.add(5);
  print(list);

  // 移除元素
  list.remove(3);
  print(list);

  // 判断是否为空
  print(list.isEmpty);

  // 可在list字面量前添加const关键字，定义一个不可改变的 列表（编译时常量）
  var constantList = const [1, 2, 3];
  constantList[1] = 1; // 报错
}
