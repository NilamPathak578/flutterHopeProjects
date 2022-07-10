import 'package:flutter/material.dart';
import 'package:flutterhopeprojects/Views/bottom_sheet.dart';
import 'package:flutterhopeprojects/Views/date_picker.dart';
import 'package:flutterhopeprojects/Views/first_screen.dart';
import 'package:flutterhopeprojects/Views/future_builder.dart';
import 'package:flutterhopeprojects/Views/grid_view.dart';
import 'package:flutterhopeprojects/Views/home_page.dart';
import 'package:flutterhopeprojects/Views/iconview.dart';
import 'package:flutterhopeprojects/Views/image.dart';
import 'package:flutterhopeprojects/Views/rich_text.dart';
import 'package:flutterhopeprojects/Views/splash_screen.dart';
import 'package:flutterhopeprojects/Views/time_picker.dart';
import 'package:flutterhopeprojects/Views/tooltip_page.dart';

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
      //home: const ImagePage(),
      //home: const IconPage(),
      //home: const DatePickerPage(),
      //home: const TimePickerPage(),
      //home: const GridViewPage(),
      //home: const ToolTipPage(),
      //home: const Splash(),
      //home: const BottomSheetExample(),
      home: const FirstScreen(),
    );
  }
}
