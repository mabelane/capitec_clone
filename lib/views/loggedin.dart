import 'package:capitec_clone/views/cards/cards.dart';
import 'package:capitec_clone/views/explore/explore.dart';
import 'package:capitec_clone/views/home/home.dart';
import 'package:capitec_clone/views/messages/messages.dart';
import 'package:capitec_clone/views/transact/transact.dart';
import 'package:flutter/material.dart';

class CallPages extends StatefulWidget {
  const CallPages({super.key});

  @override
  State<CallPages> createState() => _CallPagesState();
}

class _CallPagesState extends State<CallPages> {
  int _selectedIndex = 0;
  List<Widget> body = [GlobalOne(), Cards(), Transact(), Messages(), Explore()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: ((int index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
          items: const [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "Cards", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "Transact",
                icon: Icon(
                  Icons.home,
                  color: Colors.blueAccent,
                )),
            BottomNavigationBarItem(label: "Messages", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "Explore", icon: Icon(Icons.home)),
          ]),
    );
  }
}
