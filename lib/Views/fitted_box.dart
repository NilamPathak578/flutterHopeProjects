import 'package:flutter/material.dart';

class FittedBoxExample extends StatefulWidget {
  const FittedBoxExample({Key? key}) : super(key: key);

  @override
  State<FittedBoxExample> createState() => _FittedBoxExampleState();
}

class _FittedBoxExampleState extends State<FittedBoxExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "FittedBox Example",
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 200.0,
                width: 200,
                color: Colors.blueGrey,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Image.asset("assets/Images/girl.jpg"),
                ),
              ),
              Container(
                width: 250.0,
                height: 300.0,
                color: Colors.cyan,
                child: const FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    "FlutterHope",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
