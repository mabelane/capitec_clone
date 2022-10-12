import 'package:capitec_clone/views/Customs/tabbar_flex.dart';
import 'package:flutter/material.dart';

class GlobalOne extends StatefulWidget {
  const GlobalOne({super.key});

  @override
  State<GlobalOne> createState() => _GlobalOneState();
}

class _GlobalOneState extends State<GlobalOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GlobalOne"),
        flexibleSpace: GradientTabBar(),
      ),
    );
  }
}
