import 'package:flutter/material.dart';
import 'body_cards.dart';
import 'virtual_card.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Column(children: [
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
                  indicatorColor: Colors.white,
                  indicatorWeight: 4,
                  labelColor: Colors.white,
                  tabs: [
                    Tab(
                      text: "Cards",
                    ),
                    Tab(
                      text: "Virtual",
                    )
                  ]),
            ),
            Expanded(
                child: TabBarView(children: [CardsBody(), const VirtualCard()]))
          ]),
        ),
      ),
    );
  }
}
