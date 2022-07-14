import 'package:flutter/material.dart';

class PopupDialogExample extends StatelessWidget {
  const PopupDialogExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Popup Dialog Example"),
          centerTitle: true,
          elevation: 0,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text(
                        "About Flutter Hope",
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w600),
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                              "Flutter Hope Provides you tutorials, projects, and ideas for flutter that will make your flutter journey more meaningful.\n"),
                          Text(
                              "All the projects & contents of this website is prepared by flutterhope. We do also provide open source project with sources. If you have additional questions or require more information do not hesitate to contact us.\n"),
                          Text(
                            "Email: info@flutterhope.com",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          )
                        ],
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              "Cancel",
                              style: TextStyle(color: Colors.red),
                            )),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("OK")),
                      ],
                    );
                  });
            },
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Open Dialog",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ));
  }
}
