import 'dart:io';
import 'dart:convert';

void main() {
  startUDPServer();
}

// UDP 服务端
void startUDPServer() async {
  RawDatagramSocket rawDgramSocket =
      await RawDatagramSocket.bind(InternetAddress.loopbackIPv4, 8081);

  //监听套接字事件
  await for (RawSocketEvent event in rawDgramSocket) {
    // 数据包套接字不能监听数据，而是监听事件。
    // 当事件为RawSocketEvent.read的时候才能通过receive函数接收数据
    if (event == RawSocketEvent.read) {
      print(utf8.decode(rawDgramSocket.receive()!.data));
      rawDgramSocket.send(utf8.encode("UDP Server:already received!"),
          InternetAddress.loopbackIPv4, 8082);
    }
  }
}
