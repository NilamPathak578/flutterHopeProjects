import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterhopeprojects/Views/rich_text.dart';
import 'package:flutterhopeprojects/Widgets/containerwidget.dart';

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
        backgroundColor: Colors.green,
        //foregroundColor: Colors.yellowAccent,
        automaticallyImplyLeading: false,
        leading: const Icon(Icons.menu),
        title: const Text("AppBar Example"),
        centerTitle: true,
        actions: const [Icon(Icons.search), Icon(Icons.settings)],

        // elevation: 6,
        elevation: 0,
      ),
      drawer: const Drawer(),
      body: SafeArea(
        child: Column(
          children: [
            //TextFormFieldWidget(),
            //containerWidget(context),
            Flexible(child: container(context)),
          ],
        ),
      ),
    );
  }
}
