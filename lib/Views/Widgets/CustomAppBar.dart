import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Notes',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        const Spacer(),
        Container(
          height: 46,
          width: 46,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white.withOpacity(0.05)),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 15,
              )),
        )
      ],
    );
  }
}
