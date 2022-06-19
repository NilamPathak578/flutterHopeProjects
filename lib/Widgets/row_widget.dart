import 'package:flutter/material.dart';

Widget row() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    //crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: 80,
        width: 80,
        child: const Center(child: Text("1st container")),
        decoration: const BoxDecoration(
          color: Colors.purple,
        ),
      ),
      Container(
        height: 80,
        color: Colors.green,
        width: 80,
        child: const Center(child: Text("2nd container")),
      ),
      Container(
        height: 80,
        width: 80,
        child: const Center(child: Text("3rd container")),
        color: Colors.purple,
      ),
    ],
  );
}
