import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  Color KColorItem;
  NoteItem({required this.KColorItem, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: KColorItem),
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
    );
  }
}
