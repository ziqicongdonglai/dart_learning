import 'dart:async';

void main() {
  print("main start");

  Future(() {
    print("this is my task");
  });

  Future.microtask(() {
    print("this is microtask");
  });

  print("main stop");
}

// 运行结果
// main start
// main stop
// this is microtask
// this is my task
// 可以看到，代码的运行顺序并不是按照我们的编写顺序来的，
// 将任务添加到队列并不等于立刻执行，它们是异步执行的，
// 当前main方法中的代码执行完之后，才会去执行队列中的任务，
// 且MicroTask队列运行在Event队列之前。