import 'package:flutter/material.dart';

class HiddenBalance extends StatelessWidget {
  String accName;
  Widget leadingIcon;

  HiddenBalance({
    super.key,
    required this.accName,
    required this.leadingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(
        vertical: 6,
      ),
      height: 80,
      child: Row(
        children: [
          leadingIcon,
          Expanded(
            child: ListTile(
                title: Text(
                  accName,
                  style: const TextStyle(color: Colors.black),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.blueAccent,
                ),
                onTap: () {}),
          ),
        ],
      ),
    );
  }
}
