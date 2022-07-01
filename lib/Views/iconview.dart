import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconPage extends StatelessWidget {
  const IconPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fontawesome Icons in flutter"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: _iconDataList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: _iconDataList[index].icon,
              title: Text("${_iconDataList[index].title}"),
              trailing: const Icon(Icons.delete),
            );
          }),
    );
  }
}

class IconData {
  String? title;
  Icon? icon;
  IconData(this.title, this.icon);
}

final List<IconData> _iconDataList = [
  IconData("Facebook", const Icon(Icons.facebook)),
  IconData("Instagram", const Icon(FontAwesomeIcons.instagram)),
  IconData("Viber", const Icon(FontAwesomeIcons.viber)),
  IconData("Whatsapp", const Icon(FontAwesomeIcons.whatsapp)),
  IconData("Google", const Icon(FontAwesomeIcons.google)),
  IconData("Linkedin", const Icon(FontAwesomeIcons.linkedin)),
  IconData("Twitter", const Icon(FontAwesomeIcons.twitter))
];
