import 'package:flutter/material.dart';
import 'package:login_flutter_app/page/home_page.dart';
import 'package:login_flutter_app/page/login_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  //routes需要Map<String, WidgetBuilder>类型参数，所以这里定义了一个这个类型的常量，将刚才两个页面添加进去
  final routes = <String, WidgetBuilder> {
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '登录Demo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}