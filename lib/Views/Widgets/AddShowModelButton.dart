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
          child: Column(
            children: [
              CustomTextFild(
                title: 'Title',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFild(
                title: 'Content',
                maxLines: 5,
              ),
              const SizedBox(
                height: 60,
              ),
              CustomButton()
            ],
          ),
        ),
      ),
    );
  }
}
