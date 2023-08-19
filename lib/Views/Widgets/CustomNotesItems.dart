import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notesapp/Views/Widgets/CustomAppBar.dart';
import 'package:notesapp/Views/Widgets/CustomTextFiled.dart';

class NoteItem extends StatelessWidget {
  NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return EditViewBody();
          },
        ));
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Color(0xffffcd7a)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter Tips',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: Text('Build Your Career With Tharwat Samy',
                    style: TextStyle(
                        fontSize: 24, color: Colors.black.withOpacity(0.4))),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    size: 24,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text('May 21,2022',
                  style: TextStyle(
                      fontSize: 24, color: Colors.black.withOpacity(0.4))),
            )
          ],
        ),
      ),
    );
  }
}

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(
              height: 46,
            ),
            CustomAppBar(nameApp: 'Edit Notes', icon: Icons.done),
            SizedBox(
              height: 20,
            ),
            CustomTextFild(
              title: 'Title',
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextFild(
              maxLines: 5,
              title: 'Content',
            )
          ],
        ),
      ),
    );
  }
}
