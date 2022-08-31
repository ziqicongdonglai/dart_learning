// 指定dart:前缀，表示导入标准库，如dart:io
// import 'dart:math';

// 也可以用相对路径或绝对路径来引用dart文件
// import 'lib/student/student.dart';

// 指定package:前缀，表示导入包管理系统中的库
// import 'package:utils/utils.dart';

// 导入库时，可以使用as关键字来给库起别名，避免命名空间冲突。
// import 'package:lib1/lib1.dart';
// import 'package:lib2/lib2.dart' as lib2;

// // 使用lib1中的Element
// Element element1 = Element();
// // 使用lib2中的Element
// lib2.Element element2 = lib2.Element();

// 使用show和hide关键字控制库中成员的可见性
// 仅导入foo，屏蔽库中其他成员
// import 'package:lib1/lib1.dart' show foo;

// // 屏蔽foo，库中其他成员都可见
// import 'package:lib2/lib2.dart' hide foo;

// 为了减少 APP 的启动时间，加载很少使用的功能，
//我们还可以延迟导入库。使用 deferred as关键字延迟导入
// import 'package:deferred/hello.dart' deferred as hello;

// // 当需要使用时，再通过库标识符调用 loadLibrary函数加载
// hello.loadLibrary();