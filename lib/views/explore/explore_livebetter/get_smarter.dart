import 'package:capitec_clone/views/Customs/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../Customs/list_of_strings.dart';
import '../../Customs/list_of_text.dart';

class GetSmarter extends StatefulWidget {
  GetSmarter({super.key});

  @override
  State<GetSmarter> createState() => _GetSmarterState();
}

class _GetSmarterState extends State<GetSmarter> {
  bool addHome = true;
  late ListOfStrings features = ListOfStrings();
  String image = 'lib/images/getsmarter.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 97, 114, 125),
        title: const Text("Details"),
      ),
      body: Container(
        color: const Color.fromARGB(255, 245, 245, 245),
        child: ListView(
          children: [
            Details(image: image, title: "GetSmarter", subtitle: "Education"),
            Container(
                height: 50,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("Open"))),
            Container(
                color: Colors.white,
                child: SwitchListTile(
                  secondary: const Icon(
                    Icons.add_circle_outline_rounded,
                    color: Colors.blue,
                  ),
                  title: const Text("Add to Home"),
                  value: addHome,
                  onChanged: (value) {
                    addHome = value;
                  },
                )),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.white),
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Benefit Partners",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RichText(
                      strutStyle: const StrutStyle(height: 1.5),
                      text: const TextSpan(
                          text: "As a Capitec client, you qualify for ",
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                                text: "R 4 000 ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            TextSpan(
                                text:
                                    "off any GetSmarter short courses from leading South African universities",
                                style: TextStyle(color: Colors.black))
                          ])),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 30,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 2, 214, 182)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)))),
                        onPressed: () {},
                        child: const Text("Discount")),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 200, 200, 200),
                    offset: Offset(0, 2))
              ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Features",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ListOfText(
                    itemCount: features.getSmarterFeatures.length,
                    text: features.getSmarterFeatures,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
