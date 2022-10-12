import 'package:flutter/material.dart';

class Transactions extends StatelessWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 245, 245, 245),
      child: Column(
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(222, 222, 222, 1.0),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 2))
            ]),
            child: Column(
              children: const [
                Icon(Icons.message),
                Text(
                    "Recieve all your trasactional messages in the app for free"),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width / 1.08,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text("Update"))),
        ],
      ),
    );
  }
}
