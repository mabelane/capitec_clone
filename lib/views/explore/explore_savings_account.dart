import 'dart:ui';

import 'package:flutter/material.dart';

class ExploreSavingsAccount extends StatelessWidget {
  ExploreSavingsAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color.fromARGB(236, 255, 255, 255),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(" Savings Account"),
          bottom: const TabBar(tabs: [
            Tab(text: "Benefits"),
            Tab(
              text: "Fees",
            )
          ]),
        ),
        body: TabBarView(children: [BenefitsContent(), Fees()]),
      ),
    );
  }
}

class Fees extends StatelessWidget {
  Fees({Key? key}) : super(key: key);
  int index = 0;
  final List<Map> _generalList = [
    {"text": "Pay to Capitec account", "price": "R1"},
    {"text": "asaadsd", "price": "R1.50"},
    {"text": "adaddd", "price": "R0.50"},
    {"text": "adsdasda", "price": "Free"},
    {"text": "adsdsd", "price": "Free"},
    {"text": "dasdas", "price": "Free"},
    {"text": "asdsdsdasd", "price": "Free"},
    {"text": "adsdsddasd", "price": "R3.50"},
    {"text": "adsdsdasas", "price": "R7"},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                colors: [Colors.blue, Colors.white])),
        height: 30,
        child: Row(
          children: const [
            Text("Pay to Capitec"),
            Text("R1"),
          ],
        ),
      ),
    ]));
  }
}

///Class that Contains the content to be displayed from Explore below
class BenefitsContent extends StatelessWidget {
  BenefitsContent({Key? key}) : super(key: key);

  final List<String> _benefits = [
    "• A main savings aacount and up to 4 free savings plans\n",
    "• Secure low-cost money transfer\n",
    "• Use your Capitec card worldwide whenever you see the Mastercard 💳 logo\n",
    "• Access all your accounts with one card\n",
    "• Free money transfers between your aacounts on the app\n",
    "• Zero data charges when you use our app\n",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 1.5,
              spreadRadius: 2,
            )
          ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _benefits
                .map((e) => Text(
                      e,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ))
                .toList(),
          )),
    );
  }
}
