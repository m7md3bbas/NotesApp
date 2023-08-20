import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
part 'NoteModel.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveType(typeId: 0)
  String title;
  @HiveType(typeId: 1)
  String subTitle;
  @HiveType(typeId: 2)
  String date;
  @HiveType(typeId: 3)
  int color;

  NoteModel(
      {required this.title,
      required this.subTitle,
      required this.date,
      required this.color});
}
