import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget({Key? key}) : super(key: key);

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey();
    final TextEditingController _textEditingController =
        TextEditingController();

    void _submit() {
      final bool isvalid = _formKey.currentState!.validate();
      if (isvalid) {
        if (kDebugMode) {
          print("Got a valid data.");
        }
        //
      }
    }

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: _textEditingController,
            keyboardType: TextInputType.name,
            validator: (value) {
              if (value != null && value.trim().length < 3) {
                return "This field requires minimum of 3 character";
              }
              return null;
            },
            decoration: const InputDecoration(
                labelText: "Enter username",
                labelStyle: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)))),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(onPressed: _submit, child: const Text("Submit"))
        ],
      ),
    );
  }
}
