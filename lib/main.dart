import 'package:flutter/material.dart';
import 'package:instagram_app/login/login_page.dart';
import 'package:instagram_app/page/insta_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
     debugShowCheckedModeBanner: false,
     home: LoginPage()
    );
  }
}
