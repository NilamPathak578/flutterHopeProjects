import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Example"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/Images/girl.jpg",
                      ),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text("This is Asset Image"),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1558570922-522045a5b148?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text("This is Network Image.")
          ],
        ),
      ),
    );
  }
}
