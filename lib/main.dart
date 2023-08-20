import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/Constant.dart';
import 'package:notesapp/NoteModel/NoteModel.dart';
import 'Views/NotesViews.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:async';

Future<File> _getLocalFile() async {
  // get the path to the document directory.
  String dir = (await getApplicationDocumentsDirectory()).path;
  return new File('$dir/gamerel_data.json');
}

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(KHiveBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: NotesView(),
    );
  }
}
