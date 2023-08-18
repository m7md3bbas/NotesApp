import 'package:flutter/material.dart';
import 'package:notesapp/Views/Widgets/NotesViewBody.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffffcd7a),
        onPressed: () {},
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.add),
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
