import 'package:flutter/material.dart';

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
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(16.0)),
              child: Image.asset(
                "assets/Images/image.jpg",
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ClipOval(
              child: Image.asset(
                "assets/Images/image.jpg",
              ),
            )
          ],
        ),
      ),
    );
  }
}
