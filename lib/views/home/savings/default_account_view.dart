import 'package:flutter/material.dart';

import '../../Customs/tabbar_flex.dart';
import '../all.dart';
import '../money_in.dart';
import '../money_out.dart';
import '../track.dart';

class DefaultAccountView extends StatelessWidget {
  const DefaultAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Savings Account"),
          flexibleSpace: const GradientTabBar(),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              height: 40,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 33, 81, 156),
                    Color.fromARGB(255, 51, 117, 194),
                    Color.fromARGB(255, 59, 130, 169),
                  ]),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(222, 222, 222, 1.0),
                      spreadRadius: 1,
                      offset: Offset(0, 2),
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Available Balance",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "R 5500.89",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 33, 81, 156),
                    Color.fromARGB(255, 51, 117, 194),
                    Color.fromARGB(255, 59, 130, 169),
                  ]),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(222, 222, 222, 1.0),
                      spreadRadius: 1,
                      offset: Offset(0, 2),
                    )
                  ]),
              child: const TabBar(
                  padding: EdgeInsets.fromLTRB(5, 0, 10, 5),
                  labelPadding: EdgeInsets.symmetric(horizontal: 5),
                  indicatorColor: Colors.white,
                  indicatorWeight: 4,
                  labelColor: Colors.white,
                  tabs: [
                    Tab(
                      text: "All",
                    ),
                    Tab(
                      text: "Money In",
                    ),
                    Tab(
                      text: "Money Out",
                    ),
                    Tab(
                      text: "Track",
                    )
                  ]),
            ),
            const Expanded(
                child: TabBarView(children: [
              All(),
              MoneyIn(),
              MoneyOut(),
              Track(),
            ]))
          ],
        ),
      ),
    );
  }
}
