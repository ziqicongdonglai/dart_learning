// TCP服务端
// import 'dart:convert';
// import 'dart:io';

// void main() {
//   //绑定本地localhost的8081端口(即绑定：127.0.0.1)
//   ServerSocket.bind(InternetAddress.loopbackIPv4, 8081).then((serverSocket) {
//     serverSocket.listen((socket) {
//       socket.cast<List<int>>().transform(utf8.decoder).listen(print);
//     });
//   });
// }
// 以上为简洁示例，不是非常清晰，等价于以下代码

import 'dart:convert';
import 'dart:io';

void main() {}

void startTCPServer() async {
  ServerSocket serverSocket =
      await ServerSocket.bind(InternetAddress.anyIPv4, 8081);

  // 遍历所有连接到服务器的套接字
  await for (Socket socket in serverSocket) {
    // 先将字节流以utf-8进行解码
    socket.cast<List<int>>().transform(utf8.decoder).listen((data) {
      print("from ${socket.remoteAddress.address} data:" + data);
      socket.add(utf8.encode("hello client!"));
    });
  }
}
