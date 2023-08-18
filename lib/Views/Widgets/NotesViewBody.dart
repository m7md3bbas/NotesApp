import 'package:flutter/material.dart';
import 'package:notesapp/Views/Widgets/CustomAppBar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          SizedBox(
            height: 46,
          ),
          CustomAppBar(),
        ],
      ),
    );
  }
}
