class Point {
  num x;
  num y;

  // 同名构造方法
  Point(this.x, this.y);

  // 命名构造方法重定向到同名构造方法，中间使用一个冒号
  Point.alongXAxis(num x) : this(x, 0);
}

void main() {
  var point1 = Point(10, 20);
  var point2 = Point.alongXAxis(10);
  // x = 10, y = 20
  print('x = ${point1.x}, y = ${point1.y}');
  // x = 10, y = 0
  print('x = ${point2.x}, y = ${point2.y}');
}
