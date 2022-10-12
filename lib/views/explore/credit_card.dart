import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                    text: "Transactions",
                  ),
                  Tab(
                    text: "Inbox",
                  )
                ]),
          ),
        ],
      ),
    );
  }
}

class RatesAndFees extends StatelessWidget {
  const RatesAndFees({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 80,
    );
  }
}

class Benefits extends StatefulWidget {
  const Benefits({Key? key}) : super(key: key);

  @override
  State<Benefits> createState() => _BenefitsState();
}

class _BenefitsState extends State<Benefits> {
  String _benefits = "";
  String _straight = "";
  String _budget = "";

  getAllTextFiles() async {
    String benefitsText = await rootBundle.loadString("textfiles/benefits.txt");
    String straightText = await rootBundle.loadString("textfiles/straight.txt");
    String budgetText = await rootBundle.loadString("textfiles/budget.txt");

    setState(() {
      _benefits = benefitsText;
      _straight = straightText;
      _budget = budgetText;
    });
  }

  @override
  void initState() {
    getAllTextFiles();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.grey)]),
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: Text(_benefits),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            width: MediaQuery.of(context).size.width,
            height: 250,
            child: Text(_straight),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            height: 80,
            child: Text(_budget),
          ),
        ],
      ),
    );
  }
}
