import 'package:capitec_clone/views/Customs/hiden_balance.dart';
import 'package:capitec_clone/views/Customs/show_bal.dart';
import 'package:capitec_clone/views/Customs/tabbar_flex.dart';
import 'package:capitec_clone/views/home/livebetter_acc.dart';
import 'package:capitec_clone/views/home/savings.dart';
import 'package:flutter/material.dart';

class GlobalOne extends StatefulWidget {
  const GlobalOne({super.key});

  @override
  State<GlobalOne> createState() => _GlobalOneState();
}

class _GlobalOneState extends State<GlobalOne> {
  final List<Widget> _accounts = const [SavingsAccount(), LiveBetterAccount()];
  final List<String> _accName = const [
    "Savings Account",
    "Live Better",
  ];
  final List<String> availableBalance = const [
    "Avaibale Balance",
    "Avaibale Balance",
  ];

  final List<String> _favName = const [
    "Pay Beneficiary",
    "Transfer Money",
    "Track Money",
    "Buy Prepaid",
    "Buy Electricity",
    "Send Cash",
  ];

  final List<String> _favIcon = [
    'lib/icons/send cash.png',
    'lib/icons/transfer.png',
    'lib/icons/statistics.png',
    'lib/icons/buy prepaid.png',
    'lib/icons/buy Electricity.png',
    'lib/icons/send cash.png',
  ];

  List<Widget> leadingIcon = const [
    Image(image: AssetImage('lib/images/savings.png')),
    Image(image: AssetImage('lib/images/livebetter.png')),
  ];

  List<double> balance = [5500.89, 53.60];

  final bool _hideBal = false;

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leadingWidth: 75,
        leading: TextButton(
            onPressed: () {},
            child: const Text(
              "Sign Out",
              style: TextStyle(color: Colors.white),
            )),
        title: const Text("GlobalOne"),
        flexibleSpace: const GradientTabBar(),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
        color: const Color.fromARGB(255, 245, 245, 245),
        child: ListView(
          children: [
            _hideBal == false
                ? ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: _accounts.length,
                    itemBuilder: ((context, index) {
                      return ShowBalance(
                        leadingIcon: leadingIcon[index],
                        accName: _accName[index],
                        balText: availableBalance[index],
                        accBal: 'R ${balance[index]}',
                        onTap: () {},
                      );
                    }))
                : ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: _accounts.length,
                    itemBuilder: ((context, index) {
                      return HiddenBalance(
                          accName: _accName[index],
                          leadingIcon: leadingIcon[index]);
                    })),
            Container(
              height: 30,
              margin: const EdgeInsets.fromLTRB(8, 10, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Favourites",
                    style: TextStyle(fontSize: 16),
                  ),
                  TextButton(onPressed: () {}, child: const Text("Edit  >"))
                ],
              ),
            ),
            GridView.builder(
                itemCount: _favName.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: (1 / .43),
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      print("I have clicked ${_favName[index]}");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      //padding: ,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(255, 185, 185, 185),
                                blurRadius: 2,
                                offset: Offset(0, 2))
                          ]),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 25,
                                child: Image.asset(
                                  _favIcon[index],
                                  color: const Color(0xFF459ada),
                                )),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(_favName[index]),
                          ]),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
