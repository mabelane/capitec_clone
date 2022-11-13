import 'package:flutter/material.dart';

class ListOfText extends StatelessWidget {
  int itemCount;
  List<String> text;
  bool isString = true;

  ListOfText({super.key, required this.itemCount, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: itemCount,
        itemBuilder: ((context, index) => Text(
              '⚈ ${text[index]}',
              strutStyle: const StrutStyle(height: 1.8),
            )));
  }
}
