import 'package:flutter/material.dart';
import 'package:projekuas/home.dart';
import 'package:projekuas/loginpage.dart';
import 'package:projekuas/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: loginpage(),
    );
  }
}
