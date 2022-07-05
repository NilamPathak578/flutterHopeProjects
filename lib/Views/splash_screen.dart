import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterhopeprojects/Views/future_builder.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (_) => const FutureBuilderExample()));
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: const Center(
        child: SizedBox(
          height: 150,
          width: 150,
          child: FlutterLogo(
            size: 20.0,
          ),
        ),
      ),
    );
  }
}
