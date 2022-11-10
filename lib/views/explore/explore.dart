import 'package:capitec_clone/views/Customs/tabbar_flex.dart';
import 'package:flutter/material.dart';
import 'capitec_connect.dart';
import 'global_one_explore.dart';
import 'live_better_explore.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Explore"),
          flexibleSpace: const GradientTabBar(),
        ),
        body: Column(
          children: [
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
                      text: "GlobalOne",
                    ),
                    Tab(
                      text: "Capitec Connect",
                    ),
                    Tab(
                      text: "Live Better",
                    )
                  ]),
            ),
            Expanded(
                child: TabBarView(children: [
              GlobalOneExplore(),
              const CapitecConnect(),
              LiveBetterExplore()
            ]))
          ],
        ),
      ),
    );
  }
}
