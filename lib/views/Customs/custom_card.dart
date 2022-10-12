import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String titleTitle;
  final String? subSubtitle;
  final Color? textColor;
  final GestureTapCallback? onTap;

  CustomCard(
      {required this.titleTitle,
      this.subSubtitle,
      this.textColor = const Color.fromARGB(255, 1, 60, 90),
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.fromLTRB(15, 5, 15, 5),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(4)),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(222, 222, 222, 1.0),
              spreadRadius: 1,
              offset: Offset(0, 2),
            )
          ]),
      child: ListTile(
        minLeadingWidth: 10,
        leading: const Icon(Icons.access_alarm),
        title: Text(
          titleTitle,
          style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subSubtitle.toString(),
          style: const TextStyle(color: Colors.black54),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_outlined,
          color: Colors.blueAccent,
        ),
        onTap: onTap,
      ),
    );
  }
}
