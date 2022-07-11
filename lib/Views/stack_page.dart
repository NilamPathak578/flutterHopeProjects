import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Example"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 200.0,
              width: 200.0,
              color: Colors.green,
            ),
          ),
          Positioned(
              right: 300,
              height: 150,
              width: 150,
              child: Container(
                color: Colors.pink,
                child: const Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 26,
                ),
              )),
          const Positioned(
              bottom: 20,
              left: 300.0,
              height: 150,
              width: 150,
              child: Card(
                elevation: 5.0,
                child: Center(
                    child: Text(
                  "Text`",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600),
                )),
                color: Colors.amber,
              )),
          const Positioned(
              right: 10.0,
              child: Card(
                  child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Text("Right"),
              )))
          // Container(
          //   height: 400,
          //   width: 400,
          //   color: Colors.red,
          // ),
          // Container(
          //   height: 200.0,
          //   width: 200,
          //   color: Colors.yellow,
          // ),
        ],
      ),
    );
  }
}
