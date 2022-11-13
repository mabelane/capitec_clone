import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String image, title, subtitle;

  const Details(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      height: MediaQuery.of(context).size.height * .2,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            width: 25,
            height: MediaQuery.of(context).size.height * .102,
          ),
          Row(
            children: [
              SizedBox(
                  height: 90,
                  width: 60,
                  child: Image(image: AssetImage(image))),
              Expanded(
                child: ListTile(
                  enabled: false,
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    title,
                    style: const TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(subtitle),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
