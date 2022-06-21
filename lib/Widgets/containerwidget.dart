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

Widget container(BuildContext context) {
  return Container(
    //equal margin in all
    //margin: const EdgeInsets.all(10),

    //symmetric margin
    //margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),

    //margin on only one side
    //  margin: const EdgeInsets.only(top: 20),

    //different margin from all side
    //margin: const EdgeInsets.fromLTRB(10, 30, 10, 20),

    height: MediaQuery.of(context).size.height,

    width: double.infinity,
    decoration: const BoxDecoration(color: Colors.greenAccent),
    child: const Padding(
      padding: EdgeInsets.all(20.0),
      child: Text(
        "Padding Example",
        style: TextStyle(
            color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w700),
      ),
    ),
  );
}
