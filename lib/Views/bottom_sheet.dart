import 'package:flutter/material.dart';
import 'package:flutterhopeprojects/Models/icon_data.dart';

class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottomsheet Example"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18.0),
                      topRight: Radius.circular(18.0)),
                ),
                builder: (context) {
                  return Container(
                      height: 300,
                      width: double.infinity,
                      child: ListView.builder(
                          itemCount: datalist.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                                leading: datalist[index].icon,
                                title: Text(
                                  datalist[index].text.toString(),
                                  style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700),
                                ));
                          }));
                });
          },
          child: const Padding(
            padding: EdgeInsets.all(14.0),
            child: Text(
              "showModelBottomsheet",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }
}
