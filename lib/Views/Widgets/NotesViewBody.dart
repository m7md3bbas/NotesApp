import 'package:flutter/material.dart';
import 'package:notesapp/Views/Widgets/CustomAppBar.dart';

import 'CustomNotesItems.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 46,
          ),
          CustomAppBar(),
          NoteItem(KColorItem: Color(0xffffcd7a)),
        ],
      ),
    );
  }
}
