import 'package:flutter/material.dart';

Widget row() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      // Container(
      //   height: 200,
      //   width: 80,
      //   child: const Center(child: Text("1st container")),
      //   decoration: const BoxDecoration(
      //     color: Colors.purple,
      //   ),
      // ),
      // Expanded(
      //   child: Container(
      //     height: 200,
      //     color: Colors.green,
      //     width: 80,
      //     child: const Center(child: Text("2nd container")),
      //   ),
      // ),
      // Container(
      //   height: 200,
      //   width: 80,
      //   child: const Center(child: Text("3rd container")),
      //   color: Colors.purple,
      // ),

      Container(
        height: 200,
        width: 80,
        child: const Center(child: Text("1st container")),
        decoration: const BoxDecoration(
          color: Colors.purple,
        ),
      ),
      Flexible(
        flex: 3,
        fit: FlexFit.tight,
        child: Container(
          height: 200,
          color: Colors.green,
          width: 80,
          child: const Center(child: Text("2nd container")),
        ),
      ),

      Flexible(
        flex: 2,
        child: Container(
          height: 200,
          width: 80,
          child: const Center(child: Text("3rd container")),
          color: Colors.purple,
        ),
      ),
      Container(
        height: 200,
        color: Colors.green,
        width: 80,
        child: const Center(child: Text("2nd container")),
      ),
    ],
  );
}
