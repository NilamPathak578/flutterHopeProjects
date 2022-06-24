import 'package:flutter/material.dart';
import 'package:flutterhopeprojects/Views/home_page.dart';
import 'package:flutterhopeprojects/Views/image.dart';
import 'package:flutterhopeprojects/Views/rich_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterHope Projects',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const Homepage(),
      //home: const RichTextWidget(),
      home: const ImagePage(),
    );
  }
}
