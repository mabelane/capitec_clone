import 'package:flutter/material.dart';

class ListOfRichText extends StatelessWidget {
  int itemCount;
  List<Widget> text;
  bool isString = true;

  ListOfRichText({super.key, required this.itemCount, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: itemCount,
        itemBuilder: ((context, index) => text[index]));
  }
}
