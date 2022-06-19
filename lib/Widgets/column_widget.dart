import 'package:flutter/material.dart';

Widget column() {
  return Column(
    children: [
      Expanded(
        child: Container(
          height: 80,
          width: 80,
          child: const Center(child: Text("1st container")),
          decoration: const BoxDecoration(
            color: Colors.purple,
          ),
        ),
      ),
      Expanded(
        child: Container(
          height: 80,
          color: Colors.green,
          width: 80,
          child: const Center(child: Text("2nd container")),
        ),
      ),
      Expanded(
        child: Container(
          height: 80,
          width: 80,
          child: const Center(child: Text("3rd container")),
          color: Colors.purple,
        ),
      ),
    ],
  );
}
