import 'package:flutter/material.dart';
import 'package:flutterhopeprojects/Views/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "This is the first Screen",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 20.0,
            ),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const SecondScreen()));
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("First Screen"),
                )),
          ],
        ),
      ),
    );
  }
}
