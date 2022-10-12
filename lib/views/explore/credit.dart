import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'credit_card.dart';

class Credit extends StatelessWidget {
  const Credit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 193, 13, 0),
          title: const Text("Credit")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 209, 15, 1),
              height: 140,
              child: Column(
                children: const [
                  Text(
                    "Rethink credit realise dreams",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width / 1.05,
                height: 45,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("Get Estimate"))),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.05,
              height: 45,
              child: OutlinedButton(
                  onPressed: () {}, child: const Text("Credit Rating")),
            ),
            const SizedBox(
              height: 9,
            ),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                title: const Text(
                  "Loan",
                  style: TextStyle(color: Colors.red),
                ),
                subtitle: const Text("Personalised credit and terms"),
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
                onTap: () {},
              ),
            ),
            Card(
              margin: const EdgeInsets.all(10),
              child: ListTile(
                title: const Text(
                  "Credit card",
                  style: TextStyle(color: Colors.red),
                ),
                subtitle: const Text("Get up to R500 000 credit limit"),
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => CreditCard())));
                },
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                title: const Text(
                  "Access facility",
                  style: TextStyle(color: Colors.red),
                ),
                subtitle: const Text("Get up to R500 000 revolving credit"),
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => AccessFacility())));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

/** Access Facility content */

class AccessFacility extends StatefulWidget {
  AccessFacility({Key? key}) : super(key: key);

  @override
  State<AccessFacility> createState() => _AccessFacilityState();
}

class _AccessFacilityState extends State<AccessFacility> {
  String data = "";

  getAccessFacilityText() async {
    String getText =
        await rootBundle.loadString("textfiles/accessfacility.txt");

    setState(() {
      data = getText;
    });
  }

  @override
  void initState() {
    getAccessFacilityText();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 201, 13, 0),
          centerTitle: true,
          title: const Text(
            "Access Facility",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
          width: MediaQuery.of(context).size.width,
          height: 250,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 3,
              blurRadius: 4,
            )
          ]),
          child: Text(
            data,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        )));
  }
}
