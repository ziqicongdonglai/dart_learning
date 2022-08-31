// 又称为关联数组，相当于Java中的HashMap
void main() {
  // 通过字面量创建Map
  var gifts = {
    'first': 'Java',
    'second': 'Dart',
  };
  print(gifts);

  // 往Map中添加键值对
  gifts['third'] = 'JavaScript';
  print(gifts.length);

  // 获取指定 key 的 value
  print(gifts['first']);

  // 键不存在则返回 null
  print(gifts['fourth']);
}
