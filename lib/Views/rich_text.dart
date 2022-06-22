import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RichText Example"),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: RichText(
            // Controls visual overflow
            overflow: TextOverflow.clip,

            // Controls how the text should be aligned horizontally
            textAlign: TextAlign.end,

            // Control the text direction
            textDirection: TextDirection.rtl,

            // Whether the text should break at soft line breaks
            softWrap: true,

            // Maximum number of lines for the text to span
            //maxLines: 1,

            // The number of font pixels for each logical pixel
            textScaleFactor: 1,
            text: const TextSpan(text: " This is RichText Example.", children: [
              TextSpan(
                text:
                    "The RichText widget is used to display text that uses various different styles",
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.green),
              ),
              TextSpan(
                text:
                    "The displayed text is described using a tree of TextSpan objects, each of which has its own associated style that is used for that subtree.",
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.yellow),
              ),
              TextSpan(
                text:
                    "Depending on the layout constraints the text might break across multiple lines or might all be displayed on the same line.",
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.red),
              )
            ]),
          )),
    );
  }
}
