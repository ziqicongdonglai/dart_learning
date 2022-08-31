import '类的初始化列表.dart';

class Point {
  int x;
  int y;

  Point(this.x, this.y);

  // 使用 operator关键字，为该类重载“+”运算符
  Point operator +(Point p) {
    return Point(this.x + p.x, this.y + p.y);
  }

  // 为该类重载“-”运算符
  Point operator -(Point p) {
    return Point(this.x - p.x, this.y - p.y);
  }
}

void main() {
  var p1 = Point(1, 5);
  var p2 = Point(7, 10);

  // 重载运算符后，类可以使用"+"、"-"运算符操作
  var p3 = p1 + p2;
  var p4 = p2 - p1;

  print("${p3.x}, ${p3.y}");
  print("${p4.x}, ${p4.y}");
}
