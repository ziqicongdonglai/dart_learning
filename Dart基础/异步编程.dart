import 'dart:io';

// 在函数签名中加入async关键字，
// 表示该函数异步执行，
// await表示等待异步结果执行完成返回Future对象。
// 但有一点需要注意，await只能在async函数中出现，
// 因此往往需要再定义一个async函数，用于包装。
// 上述代码中test函数就是用于包装。
doTask() async {
  sleep(Duration(seconds: 3));
  return "OK";
}

test() async {
  var res = await doTask();
  print(res);
}

void main() async {
  print('main start');
  // 正常顺序执行
  var res = await doTask();
  print(res);
  print('main end');

  print('main start');
  // 最后打印 OK
  test();
  print('main end');
}
