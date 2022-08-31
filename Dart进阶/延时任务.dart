import 'dart:async';
import 'dart:io';

void main() {
  print("main start");

  Future.delayed(new Duration(seconds: 1), () {
    print('task delayed');
  });

  Future(() {
    // 模拟耗时5秒
    sleep(Duration(seconds: 5));
    print("5s task");
  });

  print("main stop");
}
// 运行结果
// main start
// main stop
// 5s task
// task delayed
// 从结果可以看出，delayed方法调用在前面，但是它显然并未直接将任务加入Event队列，
// 而是需要等待1秒之后才会去将任务加入，但在这1秒之间，
// 后面的new  Future代码直接将一个耗时任务加入到了Event队列，
// 这就直接导致写在前面的delayed任务在1秒后只能被加入到耗时任务之后，
// 只有当前面耗时任务完成后，它才有机会得到执行。这种机制使得延迟任务变得不太可靠，
// 你无法确定延迟任务到底在延迟多久之后被执行。