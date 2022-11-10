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
          selectedItemColor: Color(0xFF459ada),
          currentIndex: _selectedIndex,
          onTap: ((int index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
          items: [
            BottomNavigationBarItem(
                label: "Home", icon: Icon(Icons.home_outlined)),
            BottomNavigationBarItem(
              label: "Cards",
              icon: SizedBox(
                height: 25,
                child: Image.asset(
                  'lib/icons/cardIcon.png',
                  color: Colors.grey,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "Transact",
              icon: SizedBox(
                  height: 30, child: Image.asset('lib/icons/statistics.png')),
            ),
            BottomNavigationBarItem(
                label: "Messages",
                icon: SizedBox(
                    height: 25, child: Image.asset('lib/icons/SMS.png'))),
            BottomNavigationBarItem(
                label: "Explore",
                icon: SizedBox(
                    height: 25, child: Image.asset('lib/icons/explore.png'))),
          ]),
    );
  }
}
