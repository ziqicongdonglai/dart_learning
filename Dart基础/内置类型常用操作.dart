void main() {
  // String 转 int
  int one = int.parse('123');
  print(one);

  // String 转 double
  double two = double.parse('12.3456');
  print(two);

  // int 转 String
  String oneStr = 123.toString();
  print(oneStr);

  // double 转 String
  String twoStr = 3.1415926.toStringAsFixed(2);
  print(twoStr);

  // Dart也支持整数位操作，<<、>>、&、|
  print((3 << 1) == 6); // 0011 << 1 == 0110
  print((3 >> 1) == 1); // 0011 >> 1 == 0001
  print((3 | 4) == 7); // 0011 | 0100 == 0111
}
