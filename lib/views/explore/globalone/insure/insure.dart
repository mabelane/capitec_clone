import 'package:flutter/material.dart';

class Insure extends StatelessWidget {
  Insure({super.key});
  static String next =
      r"""Limited ("Centriq Life"), a licensed life insurer and authorised financial services""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 97, 114, 125),
        title: const Text("Insure"),
      ),
      body: Container(
        color: const Color.fromARGB(255, 245, 245, 245),
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .18,
              color: const Color.fromARGB(255, 97, 114, 125),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 45,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("Get Estimate"))),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 45,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(
                          color: Color(0xFF459ada), width: 0.8)),
                  onPressed: () {},
                  child: const Text("Credit Rating")),
            ),
            const SizedBox(
              height: 9,
            ),
            Container(
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
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              //color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                    child: ListTile(
                      //isThreeLine: true,
                      title: const Text(
                        "Funeral Plan",
                        style: TextStyle(
                          color: Color.fromARGB(255, 20, 55, 81),
                        ),
                      ),
                      subtitle: const Text(
                        "Benefits and more that make our funeral plan unique",
                        style: TextStyle(color: Colors.black),
                      ),
                      onTap: () {},
                    ),
                  ),
                  const Icon(
                      color: Colors.blue, Icons.keyboard_arrow_right_outlined)
                ],
              ),
            ),
            const Text(
              "Insurance products are underwritten by Centriq Life Insurance Company Limited ",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10),
            ),
            Text(
              next,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }
}
