class Meta {
  double price;
  String name;
  Meta(this.name, this.price);
}

// 定义商品Item类
class Item extends Meta {
  Item(name, price) : super(name, price);
}

// 定义购物车类
class ShoppingCart extends Meta {
  String? code;
  DateTime date;
  List<Item> bookings = [];

  ShoppingCart(name, this.code)
      : date = DateTime.now(),
        super(name, 0);

  price() {
    // ...
  }

  getInfo() {
    return '购物车信息：\n--------------------\n用户名：$name\n优惠码：$code\n总价：${price()}\n日期：$date\n--------------------';
  }
}

void main() {
  ShoppingCart sc = ShoppingCart('张三', '123456', DateTime.now());
  sc.bookings = [
    Item('苹果', 10.0),
    Item('鸭梨', 20.0),
  ];
  print(sc.getInfo());
}
