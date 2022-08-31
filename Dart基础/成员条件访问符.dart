void main() {
  // list1默认值为null
  // List list1;
  // print(list1?.length); // null

  // List list2 = [1, 2, 3];
  List? list2;
  // ? 为null 就直接返回 null
  print(list2?.length);
}
