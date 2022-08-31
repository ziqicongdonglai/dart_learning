import 'dart:async';
// Future的几种创建方法
// Future()
// Future.microtask()
// Future.sync()
// Future.value()
// Future.delayed()
// Future.error()

// 其中sync是同步方法，任务会被立即执行
// void main() {
//   print("main start");

//   Future.sync(() {
//     print("sync task");
//   });

//   Future(() {
//     print("async task");
//   });

//   print("main stop");
// }

// 注册回调
// 当Future中的任务完成后，
// 我们往往需要一个回调，这个回调立即执行，不会被添加到事件队列。

// void main() {
//   print("main start");
//   Future fut = Future.value(18);
//   // 使用then注册回调
//   fut.then((res) {
//     print(res);
//   });

//   // 链式调用，可以跟多个then，注册多个回调
//   // Future(() {
//   //   print("async task");
//   // }).then((res) {
//   //   print("async task complete");
//   // }).then((res) {
//   //   print("async task after");
//   // });

//   // print("main stop");

//   // 除了then方法，还可以使用catchError来处理异常，如下
//   // Future(() {
//   //   print("async task");
//   // }).then((res) {
//   //   print("async task complete");
//   // }).catchError((e) {
//   //   print(e);
//   // });
// }

// 还可以使用静态方法wait 等待多个任务全部完成后回调。
void main() {
  print("main start");
  Future task1 = Future(() {
    print("task 1");
    return 1;
  });

  Future task2 = Future(() {
    print("task 2");
    return 2;
  });

  Future task3 = Future(() {
    print("task 3");
    return 3;
  });

  Future fut = Future.wait([task1, task2, task3]);
  fut.then((response) {
    print(response);
  });

  print("main stop");
}
