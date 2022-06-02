import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class MarqueeExample extends StatefulWidget {
  const MarqueeExample({Key? key}) : super(key: key);

  @override
  State<MarqueeExample> createState() => _MarqueeExampleState();
}

class _MarqueeExampleState extends State<MarqueeExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Marquee Example"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 50.0),
            child: Marquee(
              text:
                  "Marquee is a flutter widget that scrolls infinitely. It pauses after each round of scroll and has features like duration, curve and is highly customizable. ",
              style: const TextStyle(fontWeight: FontWeight.bold),
              scrollAxis: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.start,
              textDirection: TextDirection.rtl,
              blankSpace: 20.0,
              velocity: 100.0,
              pauseAfterRound: const Duration(seconds: 1),
              startPadding: 10.0,
              accelerationDuration: const Duration(seconds: 1),
              accelerationCurve: Curves.linear,
              decelerationDuration: const Duration(milliseconds: 500),
              decelerationCurve: Curves.bounceOut,
            ),
          ),
        ));
  }
}
