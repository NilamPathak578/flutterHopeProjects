import 'package:flutter/material.dart';
import 'package:flutterhopeprojects/Views/triangle_clipper_widget.dart';

class ClipRRectExample extends StatelessWidget {
  const ClipRRectExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clipping Example"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            // ClipRRect(
            //   borderRadius:
            //       const BorderRadius.vertical(top: Radius.circular(16.0)),
            //   child: Image.asset(
            //     "assets/Images/image.jpg",
            //   ),
            // ),
            // const SizedBox(
            //   height: 20.0,
            // ),
            // ClipOval(
            //   child: Image.asset(
            //     "assets/Images/image.jpg",
            //   ),
            // )
            ClipPath(
              clipper: TriangleClipper(),
              child: Image.asset(
                "assets/Images/image.jpg",
              ),
            ),

            const SizedBox(
              height: 6.0,
            ),
            ClipPath(
                clipper: MyCustomClipper(),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  color: Colors.redAccent,
                  child: const Center(
                    child: Text(
                      "ClipPath Example",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
