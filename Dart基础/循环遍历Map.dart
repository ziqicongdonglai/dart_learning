void main() {
  Map myMap = {'zhangsan': '202201', 'list': '202202', 'wangwu': '202203'};

  // forEach遍历Map
  myMap.forEach((k, v) => print("$k : $v"));

  // 根据键获取值来遍历，通过keys返回Map中所有键的集合
  for (var k in myMap.keys) {
    print("$k : ${myMap[k]}");
  }
}
