import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget containerWidget(BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(30),
    padding: const EdgeInsets.all(30.0),
    height: 200.0,
    width: MediaQuery.of(context).size.width,
    child: const Text("Container"),
    alignment: Alignment.bottomCenter,
    decoration: BoxDecoration(
      //color: Colors.deepPurpleAccent,
      gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Colors.amber, Colors.red]),
      border: Border.all(color: Colors.greenAccent, width: 3.0),
      //borderRadius: BorderRadius.circular(20.0)
    ),
    transform: Matrix4.rotationZ(0.2),
  );
}
