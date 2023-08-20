import 'package:flutter/material.dart';

import 'CustomBorderTextfild.dart';

class CustomTextFild extends StatelessWidget {
  CustomTextFild({super.key, this.onSave, this.maxLines, this.title});
  int? maxLines;
  String? title;
  Function(String?)? onSave;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSave,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Filed is required';
        } else {
          return toString();
        }
      },
      maxLines: maxLines,
      cursorColor: Color(0xff4c7f7d),
      decoration: InputDecoration(
          hintText: title,
          hintStyle: const TextStyle(
              color: Color(
                0xff4c7f7d,
              ),
              fontSize: 20),
          enabledBorder: CustomBorderTextfiled(Color: Colors.white),
          focusedBorder: CustomBorderTextfiled(Color: Color(0xff4c7f7d))),
    );
  }
}
