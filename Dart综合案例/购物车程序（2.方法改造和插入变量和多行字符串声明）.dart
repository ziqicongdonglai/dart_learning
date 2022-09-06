class Meta {
  double price;
  String name;
  Meta(this.name, this.price);
}

// 定义商品Item类
class Item extends Meta {
  Item(name, price) : super(name, price);

  // 重载了+运算符，合并套餐为套餐商品
  Item operator +(Item item) => Item(name + item.name, price + item.price);
}

// 定义购物车类
class ShoppingCart extends Meta {
  String? code;
  DateTime date;
  List<Item> bookings = [];

  ShoppingCart(name, this.code)
      : date = DateTime.now(),
        super(name, 0);

  // double getPrice() {
  //   double sum = 0.0;
  //   for (var i in bookings) {
  //     sum += i.price;
  //   }
  //   return sum;
  // }

  // 把迭代求和改写为归纳合并
  double get price =>
      bookings.reduce((value, element) => value + element).price;

// 字符串插入变量或表达式
// 并使用多行字符串声明
  getInfo() => '''
购物车信息：
--------------------
用户名：$name
优惠码：$code
总价：$price
日期：$date
--------------------
''';
}

void main() {
  // ShoppingCart sc = ShoppingCart('张三', '123456', DateTime.now());
  ShoppingCart sc = ShoppingCart('张三', '123456');
  sc.bookings = [
    Item('苹果', 10.0),
    Item('鸭梨', 20.0),
  ];
  print(sc.getInfo());
}
