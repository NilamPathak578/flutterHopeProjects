import 'package:flutter/material.dart';

class GridData {
  String? title;
  Icon? icon;

  GridData(this.title, this.icon);
}

final List<GridData> gridlist = [
  GridData("Home", const Icon(Icons.home)),
  GridData("Email", const Icon(Icons.email)),
  GridData("Alarm", const Icon(Icons.alarm)),
  GridData("Wallet", const Icon(Icons.wallet_giftcard)),
  GridData("Backup", const Icon(Icons.backup)),
  GridData("Book", const Icon(Icons.book)),
  GridData("Camera", const Icon(Icons.camera)),
  GridData("Person", const Icon(Icons.person)),
  GridData("Print", const Icon(Icons.print)),
  GridData("Phone", const Icon(Icons.phone)),
  GridData("Note", const Icon(Icons.note)),
  GridData("Music", const Icon(Icons.music_note)),
];
