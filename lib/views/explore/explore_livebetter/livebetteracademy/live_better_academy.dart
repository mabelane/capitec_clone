import 'package:capitec_clone/views/Customs/details.dart';
import 'package:flutter/material.dart';

import '../../../Customs/list_of_strings.dart';
import '../../../Customs/list_of_text.dart';

class LiveBetterAcademy extends StatelessWidget {
  LiveBetterAcademy({super.key});

  bool addHome = true;
  late ListOfStrings features = ListOfStrings();
  String image = 'lib/images/academy.png';

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
            Details(
                image: image,
                title: "Live Better Academy",
                subtitle: "Be Money Smart with free courses"),
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
                children: const [
                  Text(
                    "Be Money Smart",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "Capitec offers you a range of free courses on our Live Better Academy. designed yo help you get the most from your money"),
                  SizedBox(
                    height: 10,
                  ),
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ListOfText(
                    itemCount: features.liveBetterFeatures.length,
                    text: features.liveBetterFeatures,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "About",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "The Live Better Academy is Capitec's free personal finance education platform. It makes learning fun and easy so anyone can build the knowledge and skills to take charge of their financial future. The courses cover key concepts and practical tools to support and inspire habits, actions and decisions that build financial health.",
                    strutStyle: StrutStyle(height: 1.5),
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
