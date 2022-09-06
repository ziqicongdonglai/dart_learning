// 定义商品Item类
class Item {
  double price;
  String name;

  Item(this.name, this.price);
}

// 定义购物车类
class ShoppingCart {
  String name;
  String code;
  DateTime date;
  List<Item> bookings = [];

  ShoppingCart(this.name, this.code, this.date) {
    date = DateTime.now();
  }

  price() {
    double sum = 0.0;
    for (var i in bookings) {
      sum += i.price;
    }
    return sum;
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
