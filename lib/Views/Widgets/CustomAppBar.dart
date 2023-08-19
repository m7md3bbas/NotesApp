import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({required this.icon, required this.nameApp, super.key});
  final String nameApp;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          nameApp,
          style: const TextStyle(
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
              icon: Icon(
                icon,
                size: 15,
              )),
        )
      ],
    );
  }
}
