import 'dart:ui';

import 'package:flutter/material.dart';

class ToolTipPage extends StatelessWidget {
  const ToolTipPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToolTip Example"),
        centerTitle: true,
      ),
      body: Center(
        child: Tooltip(
          message: "This is a tooltip message",
          textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontStyle: FontStyle.italic),
          padding: const EdgeInsets.all(16.0),
          // margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(color: Colors.pinkAccent),
          child: SizedBox(
            height: 200,
            width: 300,
            child: Image.asset(
              "assets/Images/girl.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
