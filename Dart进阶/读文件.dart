// 简便的方式
// readAsBytes
// readAsBytesSync
// readAsString
// readAsStringSync
// readAsLines
// readAsLinesSync

// import 'dart:io';

// void main() async {
//   File file = File('test.txt');
//   try {
//     String content = await file.readAsString();
//     print(content);
//   } catch (e) {
//     print(e);
//   }
// }

// 低级别的方式
import 'dart:convert';
import 'dart:io';

void main() async {
  try {
    // LineSplitter Dart语言封装的换行符，此处将文本按行分割
    Stream lines = File('test.txt')
        .openRead()
        .transform(utf8.decoder)
        .transform(const LineSplitter());

    await for (var line in lines) {
      print(line);
    }
  } catch (_) {}
}
