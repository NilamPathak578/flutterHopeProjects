import 'package:flutter/material.dart';

class BottomSheetdataModel {
  String? text;
  Icon? icon;

  BottomSheetdataModel(this.text, this.icon);
}

final List<BottomSheetdataModel> datalist = [
  BottomSheetdataModel("Edit", const Icon(Icons.edit)),
  BottomSheetdataModel("Copy", const Icon(Icons.copy)),
  BottomSheetdataModel("Cut", const Icon(Icons.cut)),
  BottomSheetdataModel("Paste", const Icon(Icons.paste)),
  BottomSheetdataModel("Delete", const Icon(Icons.delete))
];
