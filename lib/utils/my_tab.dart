import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  const MyTab({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 150,
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 240, 229, 189),
            borderRadius: BorderRadius.circular(55)),
        padding: const EdgeInsets.all(20),
        child: Image.asset(
          iconPath,
          color: Colors.grey[600],
        ),
      ),
    );
  }
}
