import 'dart:io';

// 除了writeAsString方法外，还可以使用writeAsBytes写入一个字节列表。
// 需要注意的是，这两个方法都是异步执行的，返回值都是Future，如果有必要，也可以使用同步方法执行写入操作
// writeAsStringSync
// writeAsBytesSync
// void main() async {
//   // 创建文件
//   File file = File("test.txt");
//   String content =
//       'The easiest way to write text to a file is to create a File';
//   try {
//     // 向文件写入字符串
//     await file.writeAsString(content);
//     print("Data written.");
//   } catch (e) {
//     print(e);
//   }
// }

// 如需要更灵活的控制，可以使用如下方式操作文件，但是需要手动关闭文件
void main() async {
  // 创建文件
  File file = File("test.txt");
  // 文件模式设置为追加
  IOSink isk = file.openWrite(mode: FileMode.append);

  // 多次写入
  isk.write('A woman is like a tea bag');
  isk.writeln('you never know how strong it is until it\'s in hot water.');
  isk.writeln('-Eleanor Roosevelt');
  await isk.close();
  print('Done!');
}
