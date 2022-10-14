import 'package:flutter/material.dart';

class VirtualCard extends StatefulWidget {
  const VirtualCard({super.key});

  @override
  State<VirtualCard> createState() => _VirtualCardState();
}

class _VirtualCardState extends State<VirtualCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 245, 245, 245),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .38,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(222, 222, 222, 1.0),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 2))
              ]),
              child: Column(children: [
                const Image(
                    height: 160, image: AssetImage('lib/images/virtual.png')),
                const Text(
                  "Add a free virtual card",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 20,
                  child: const Text(
                    "You can start transacting immediately with your capitec virtual card.",
                    selectionColor: Colors.black,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.3),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextButton(
                    onPressed: (() {}),
                    child: const Text(
                      "Learn more",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width * .9,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text("Add Virtual Card")),
            )
          ],
        ),
      ),
    );
  }
}
