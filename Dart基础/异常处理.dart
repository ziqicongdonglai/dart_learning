void main() {
  // 如果关心具体异常，针对不同异常进行不同处理，
  // 可以使用try...on处理异常，
  // finally是可选的，用于最后的处理。
  try {
    print(11 ~/ 0);
  } on UnimplementedError {
    print("除数为0");
  } on Exception {
    print('Exception');
  } finally {
    print('退出');
  }

// // 不关心具体异常，只想捕获，避免异常继续传递，
// // 则可以使用try...catch处理，
// // 可以使用两个参数的catch，第二个参数是异常的调用栈信息。
//   try {
//     // 使除数为0
//     print(11 ~/ 0);
//   } catch (e, s) {
//     print(e);
//     print(s);
//   } finally {
//     print('退出');
//   }

// 如果你既想针对不同异常进行不同处理，
// 还想打印调用栈信息，那就将两种结合起来使用
  // try {
  //   print(11 ~/ 0);
  // } on UnsupportedError catch (e, s) {
  //   print(s);
  // } on Exception catch (e, s) {
  //   print(s);
  // }
}
