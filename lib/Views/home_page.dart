import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterhopeprojects/Widgets/containerwidget.dart';

import 'package:flutterhopeprojects/Widgets/textformfield_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: const Text("TextFormField Example"),
        title: const Text("Container Example"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          //TextFormFieldWidget(),
          containerWidget(context),
        ],
      ),
    );
  }
}
