import 'package:capitec_clone/views/Customs/tabbar_flex.dart';
import 'package:flutter/material.dart';
import '../Customs/custom_container.dart';

class Transact extends StatelessWidget {
  Transact({Key? key}) : super(key: key);

  List<String> beneficiary = [
    "Pay beneficiary",
  ];

  List<String> pay = [
    "Scan to pay",
    "Pay me",
  ];

  List<Widget> payIcons = const [
    Icon(Icons.scanner_outlined),
    Icon(Icons.scanner_outlined)
  ];

  List<String> transfer = [
    "Transfer money",
    "Recurring/future-date",
    "Send cash",
  ];

  List<Widget> trasferIcons = [
    SizedBox(
        height: 24,
        child: Image.asset(
          'lib/icons/transfer.png',
          color: const Color(0xFF459ada),
        )),
    SizedBox(
        height: 24,
        child: Image.asset(
          'lib/icons/buy prepaid.png',
          color: const Color(0xFF459ada),
        )),
    SizedBox(
        height: 24,
        child: Image.asset(
          'lib/icons/send cash.png',
          color: const Color(0xFF459ada),
        )),
  ];

  List<String> prepaid = [
    "Buy prepaid mobile",
    "Buy electricity",
    "Play Lotto",
  ];

  List<Widget> prepaidIcons = [
    SizedBox(
        height: 24,
        child: Image.asset(
          'lib/icons/buy prepaid.png',
          color: const Color(0xFF459ada),
        )),
    SizedBox(
        height: 24,
        child: Image.asset(
          'lib/icons/buy Electricity.png',
          color: const Color(0xFF459ada),
        )),
    SizedBox(
        height: 24,
        child: Image.asset(
          'lib/icons/lotto.png',
          color: const Color(0xFF459ada),
        )),
  ];

  List<String> owing = [
    "Debit orders",
    "SARS eFilling",
  ];

  List<Widget> owingIcons = [
    SizedBox(
        height: 24,
        child: Image.asset(
          'lib/icons/debit orders.png',
          color: const Color(0xFF459ada),
        )),
    SizedBox(
        height: 24,
        child: Image.asset(
          'lib/icons/SARS.png',
          color: const Color(0xFF459ada),
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Transact"),
        flexibleSpace: const GradientTabBar(),
      ),
      body: Container(
          color: const Color.fromARGB(255, 245, 245, 245),
          child: ListView(
            children: [
              // ********* beneficary list *************/
              Container(
                decoration:
                    const BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(222, 222, 222, 1.0),
                      spreadRadius: 1,
                      offset: Offset(0, 2),
                      blurRadius: 3)
                ]),
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: beneficiary.length,
                    separatorBuilder: ((BuildContext context, index) =>
                        const Divider(
                          height: 1,
                          thickness: 1,
                        )),
                    itemBuilder: ((context, index) => ListTile(
                          title: Text(beneficiary[index]),
                          trailing: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Color(0xFF459ada),
                          ),
                        ))),
              ),
              const SizedBox(
                height: 15,
              ),
              // ********* prepaid list *************/
              Container(
                decoration:
                    const BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(222, 222, 222, 1.0),
                    spreadRadius: 1,
                    offset: Offset(0, 2),
                  )
                ]),
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: prepaid.length,
                    separatorBuilder: ((BuildContext context, index) =>
                        const Divider(
                          indent: 18,
                          endIndent: 18,
                          height: 1,
                          thickness: 1,
                        )),
                    itemBuilder: ((context, index) => ListTile(
                          title: Text(prepaid[index]),
                          leading: prepaidIcons[index],
                          trailing: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Color(0xFF459ada),
                          ),
                          onTap: () {},
                        ))),
              ),

              const SizedBox(
                height: 15,
              ),
              // ********* trasfer list *************/
              CustomContainer(
                leadingIcon: trasferIcons,
                itemCount: transfer.length,
                title: transfer,
                onTap: () {},
              ),

              const SizedBox(
                height: 15,
              ),
              // ********* pay list *************/

              CustomContainer(
                  leadingIcon: payIcons,
                  itemCount: pay.length,
                  title: pay,
                  onTap: () {}),

              const SizedBox(
                height: 15,
              ),
              // ********* owing list *************/
              CustomContainer(
                leadingIcon: owingIcons,
                itemCount: owing.length,
                title: owing,
                onTap: () {},
              ),
            ],
          )),
    );
  }
}
