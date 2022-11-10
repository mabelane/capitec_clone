import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String titleTitle;
  final String subSubtitle;
  final Color? textColor;
  final GestureTapCallback? onTap;
  final Widget leadingIcon;

  CustomCard(
      {required this.titleTitle,
      required this.leadingIcon,
      required this.subSubtitle,
      required this.textColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    //double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      height: 78,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
                spreadRadius: 1,
                blurRadius: 1,
                color: Color.fromRGBO(222, 222, 222, 1.0),
                offset: Offset(0, 2))
          ]),
      child: Row(
        children: [
          leadingIcon,
          Expanded(
            child: ListTile(
              title: Text(
                titleTitle,
                style: TextStyle(color: textColor),
              ),
              subtitle: Text(subSubtitle),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Color(0xFF459ada),
              ),
              onTap: onTap,
            ),
          )
        ],
      ),
    );
  }
}
