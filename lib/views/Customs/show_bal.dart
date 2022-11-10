import 'package:flutter/material.dart';

class ShowBalance extends StatelessWidget {
  final String accName, accBal, balText;
  final GestureTapCallback onTap;
  final Widget leadingIcon;

  const ShowBalance(
      {super.key,
      required this.onTap,
      required this.leadingIcon,
      required this.accName,
      required this.balText,
      required this.accBal});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 6,
      ),
      height: 78,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
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
                  accName,
                  style: const TextStyle(color: Colors.black),
                ),
                subtitle: Text(balText),
                trailing: Text(
                  accBal,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                onTap: onTap),
          ),
          const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}
