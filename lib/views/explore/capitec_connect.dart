import 'package:flutter/material.dart';

class CapitecConnect extends StatelessWidget {
  const CapitecConnect({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 245, 245, 245),
      child: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            color: Colors.white,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(vertical: 15),
            color: Colors.white,
            child: Column(
              children: const [Text("Low prepaid prices")],
            ),
          )
        ],
      )),
    );
  }
}
