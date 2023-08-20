import 'package:flutter/material.dart';
import 'package:notesapp/Views/Widgets/CustomButtonShowModel.dart';

import 'CustomTextFiled.dart';

class AddNoteModelSheet extends StatelessWidget {
  const AddNoteModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Container(
          height: 400,
          child: addnote(),
        ),
      ),
    );
  }
}

class addnote extends StatefulWidget {
  const addnote({
    super.key,
  });

  @override
  State<addnote> createState() => _addnoteState();
}

class _addnoteState extends State<addnote> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextFild(
            onSave: (value) {
              title = value;
            },
            title: 'Title',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFild(
            onSave: (value) {
              title = value;
            },
            title: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 60,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          )
        ],
      ),
    );
  }
}
