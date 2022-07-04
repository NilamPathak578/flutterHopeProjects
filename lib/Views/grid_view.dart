import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterhopeprojects/Models/grid_data.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  Random random = Random();
  Color getColor() {
    return Color.fromARGB(random.nextInt(255), random.nextInt(255),
        random.nextInt(255), random.nextInt(255));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View Example"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: GridView.builder(
              itemCount: gridlist.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 2, mainAxisSpacing: 2),
              itemBuilder: (context, index) {
                return Card(
                  color: getColor(),
                  elevation: 2,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: gridlist[index].icon,
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Text(gridlist[index].title.toString())
                      ],
                    ),
                  ),
                );
              })),
    );
  }
}
