import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterhopeprojects/Views/table_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 6), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => const ShowDataTable()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/logo.jpg"))),
            ),
            const SizedBox(
              height: 10.0, //
            ),
            const Text(
              "Welcome to Flutter Hope",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const CircularProgressIndicator(
              //value: 0.7,
              //valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
              backgroundColor: Colors.yellowAccent,
              color: Colors.red,
              strokeWidth: 8.0,
            ),
          ],
        ),
      )),
    );
  }
}
