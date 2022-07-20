import 'package:flutter/material.dart';

class WrapExample extends StatelessWidget {
  const WrapExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wrap Example"),
        centerTitle: true,
      ),
      // body: Row(
      //   children: [
      //     Container(
      //       height: 150.0,
      //       width: 150.0,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       height: 150.0,
      //       width: 150.0,
      //       color: Colors.yellow,
      //     ),
      //     Container(
      //       height: 150.0,
      //       width: 150.0,
      //       color: Colors.pink,
      //     ),
      //     Container(
      //       height: 150.0,
      //       width: 150.0,
      //       color: Colors.green,
      //     ),
      //     Container(
      //       height: 150.0,
      //       width: 150.0,
      //       color: Colors.brown,
      //     ),
      //     Container(
      //       height: 150.0,
      //       width: 150.0,
      //       color: Colors.amber,
      //     ),
      //   ],
      // ),

      body: SizedBox(
        width: double.infinity,
        child: Wrap(
          spacing: 10.0,
          runSpacing: 20.0,
          alignment: WrapAlignment.end,
          children: [
            Container(
              height: 150.0,
              width: 150.0,
              color: Colors.red,
            ),
            Container(
              height: 150.0,
              width: 150.0,
              color: Colors.yellow,
            ),
            Container(
              height: 150.0,
              width: 150.0,
              color: Colors.pink,
            ),
            Container(
              height: 150.0,
              width: 150.0,
              color: Colors.green,
            ),
            Container(
              height: 150.0,
              width: 150.0,
              color: Colors.brown,
            ),
            Container(
              height: 150.0,
              width: 150.0,
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
