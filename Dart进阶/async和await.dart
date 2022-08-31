// // 导入io库，调用sleep函数
// import 'dart:io';

// // 模拟耗时操作，调用sleep函数睡眠2秒
// doTask() async {
//   await sleep(const Duration(seconds: 2));
//   return "Ok";
// }

// // 定义一个函数用于包装
// test() async {
//   var r = await doTask();
//   print(r);
// }

// void main() {
//   print("main start");
//   test();
//   print("main end");
// }

// 需要注意，async 不是并行执行，它是遵循Dart 事件循环规则来执行的，
// 它仅仅是一个语法糖，简化Future API的使用。