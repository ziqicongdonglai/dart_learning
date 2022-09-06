/// 提取公共类
class Meta {
  double price;
  String name;
  Meta(this.name, this.price);
}

// 声明抽象类，提供打印的函数
abstract class PrintHelper {
  printInfo() => print(getInfo());
  getInfo();
}

// 定义商品Item类
class Item extends Meta {
  Item(name, price) : super(name, price);

  // 重载了+运算符，合并套餐为套餐商品
  Item operator +(Item item) => Item(name + item.name, price + item.price);
}

// 定义购物车类
// “混入”（Mixin）使用 with
class ShoppingCart extends Meta with PrintHelper {
  String? code;
  DateTime date;
  List<Item> bookings = [];

  // 默认初始化方法，转发到withCode里
  ShoppingCart({name}) : this.withCode(name: name, code: null);
  // withCode初始化方法，使用语法糖和初始化列表进行赋值，并调用父类初始化方法
  ShoppingCart.withCode({name, required this.code})
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
// ??运算符表示code不为null，则用原值，否则使用默认值"没有"
  getInfo() => '''
购物车信息：
--------------------
用户名：$name
优惠码：${code ?? "没有"}
总价：$price
日期：$date
--------------------
''';
}

void main() {
  // ShoppingCart sc = ShoppingCart('张三', '123456', DateTime.now());
  // ShoppingCart sc = ShoppingCart('张三', '123456');

  // 使用级联运算符“..”，在同一个对象上连续调用多个函数以及访问成员变量。
  // 使用级联操作符可以避免创建临时变量，让代码看起来更流畅
  ShoppingCart.withCode(name: '张三', code: '123456')
    ..bookings = [
      Item('苹果', 10.0),
      Item('鸭梨', 20.0),
    ]
    ..printInfo();

  ShoppingCart(name: '李四')
    ..bookings = [Item('香蕉', 15.0), Item('西瓜', 40.0)]
    ..printInfo();
}
