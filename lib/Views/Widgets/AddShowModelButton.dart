import 'package:flutter/material.dart';

class AddNoteModelSheet extends StatelessWidget {
  const AddNoteModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFild(
          title: 'Title',
        ),
        CustomTextFild(
          title: 'Content',
          maxLines: 5,
        )
      ],
    );
  }
}

class CustomTextFild extends StatelessWidget {
  CustomTextFild({super.key, this.maxLines, this.title});
  int? maxLines;
  String? title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        maxLines: maxLines,
        cursorColor: Color(0xff4c7f7d),
        decoration: InputDecoration(
            hintText: title,
            hintStyle: TextStyle(
                color: Color(
                  0xff4c7f7d,
                ),
                fontSize: 20),
            enabledBorder: CustomBorderTextfiled(Color: Colors.white),
            focusedBorder: CustomBorderTextfiled(Color: Color(0xff4c7f7d))),
      ),
    );
  }

  OutlineInputBorder CustomBorderTextfiled({Color}) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Color));
}
