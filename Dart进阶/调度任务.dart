import 'dart:async';

void myTask() {
  print("this is my task");
}

void main() {
  // 将任务添加到MicroTask队列有两种方法
  // 1.使用 scheduleMicrotask 方法添加
  scheduleMicrotask(myTask);

  // 2.使用Future对象添加
  Future.microtask(myTask);

  // 将任务添加到 Event队列
  Future(myTask);
}
