import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CrouselPage extends StatefulWidget {
  const CrouselPage({Key? key}) : super(key: key);

  @override
  State<CrouselPage> createState() => _CrouselPageState();
}

class _CrouselPageState extends State<CrouselPage> {
  final List<String> imagelist = [
    'assets/images/3.jpg',
    'assets/images/2.jpg',
    'assets/images/lab.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Crousel Example"),
        centerTitle: true,
      ),
      body: Container(
        height: 500.0,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 10.0),
        child: ListView(children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 350.0,
              viewportFraction: 0.98,
              enlargeCenterPage: true,
              autoPlay: true,
              reverse: true,
              onPageChanged: (index, reason) {
                print(reason);
                // print(CarouselPageChangedReason.controller);
              },
            ),
            items: imagelist.map((i) {
              return Builder(builder: (context) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOutBack,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(i), fit: BoxFit.cover)),
                );
              });
            }).toList(),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Center(
              child: Text(
            "This is the Example of Crousel.",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0),
          ))
        ]),
      ),
    );
  }
}
