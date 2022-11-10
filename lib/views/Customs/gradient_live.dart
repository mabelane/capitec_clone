import 'package:flutter/material.dart';

class Gradients extends StatelessWidget {
  const Gradients({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color(0xFFaff4d7),
              Color(0xFF5ac3f1),
              Color(0xFFc3296b),
              Color(0xFF252bca),
            ],
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            stops: [0.1, 0.13, 0.6, 0.9]),
      ),
    );
  }
}

 
        // Color(0xFFaff4d7),
        // Color(0xFF5ac3f1),
