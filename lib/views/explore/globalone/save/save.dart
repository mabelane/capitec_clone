import 'package:flutter/material.dart';

import '../../../../model/savings_type.dart';

class Save extends StatelessWidget {
  Save({super.key});

  List<SavingsType> savings = [
    SavingsType(
        savingsName: "Flexible savings",
        desc:
            "Earn from 3.5% interest per year on your daily balances. Your have immediate access to your money"),
    SavingsType(
        savingsName: "Fixed-term savings",
        desc:
            "Earn from 9.9% interest when you fix your savings plan for 6 - 60 months. You can calculate your estimated payout"),
    SavingsType(
        savingsName: "Tax-free savings",
        desc: "Get up to R36 000 per year without having your interest taxed"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          shadowColor: Colors.black,
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 191, 40, 29),
          title: const Text("Save"),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 28, 71, 105),
                Color.fromARGB(255, 20, 55, 81),
                // Color.fromARGB(255, 59, 130, 169),
              ]),
            ),
          )),
      body: Container(
        color: const Color.fromARGB(255, 245, 245, 245),
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .18,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 28, 71, 105),
                    Color.fromARGB(255, 20, 55, 81),
                    // Color.fromARGB(255, 59, 130, 169),
                  ]),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(222, 222, 222, 1.0),
                      spreadRadius: 1,
                      offset: Offset(0, 2),
                    )
                  ]),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 45,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("Add Savings Plan"))),
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
                  child: const Text("Fixed-term Savings Calculator")),
            ),
            const SizedBox(
              height: 9,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: savings.length,
              itemBuilder: ((context, index) => Container(
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
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                    //color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            isThreeLine: true,
                            title: Text(
                              savings[index].savingsName,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 20, 55, 81),
                              ),
                            ),
                            subtitle: Text(
                              savings[index].desc,
                              style: TextStyle(color: Colors.black),
                            ),
                            onTap: () {},
                          ),
                        ),
                        const Icon(
                            color: Colors.blue,
                            Icons.keyboard_arrow_right_outlined)
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
