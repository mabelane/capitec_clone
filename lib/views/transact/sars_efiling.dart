import 'package:flutter/material.dart';

class EFiling extends StatelessWidget {
  const EFiling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [TextButton(onPressed: () {}, child: const Text("History"))],
        title: const Text("SARS eFiling"),
      ),
    );
  }
}
