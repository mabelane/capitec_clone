import 'package:flutter/material.dart';

class GradientTabBar extends StatelessWidget {
  const GradientTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
      gradient: LinearGradient(colors: [
        Color.fromARGB(255, 33, 81, 156),
        Color.fromARGB(255, 51, 117, 194),
        Color.fromARGB(255, 59, 130, 169),
      ]),
    ));
  }
}
