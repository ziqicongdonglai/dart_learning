import 'dart:convert';
import 'dart:io';

void main() {
  startUDPClent();
}

// UDP 客户端
void startUDPClent() async {
  RawDatagramSocket rawDgramSocket =
      await RawDatagramSocket.bind('127.0.0.1', 8082);

  rawDgramSocket.send(
      utf8.encode("hello,world!"), InternetAddress('127.0.0.1'), 8081);

  //监听套接字事件
  await for (RawSocketEvent event in rawDgramSocket) {
    if (event == RawSocketEvent.read) {
      // 接收数据
      print(utf8.decode(rawDgramSocket.receive()!.data));
    }
  }
}
