import 'package:capitec_clone/views/Customs/custom_container.dart';
import 'package:flutter/material.dart';

class CardsBody extends StatelessWidget {
  CardsBody({super.key});
  List<String> limits = [
    "Update permanent limits",
    "Set temporary limits",
  ];

  List<String> cardActions = [
    "Update permanent limits",
    "Set temporary limits",
  ];

  List<Widget> icons = const [
    Icon(Icons.wifi),
    Icon(Icons.sort_by_alpha),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 245, 245, 245),
      child: ListView(children: [
        const SizedBox(
          height: 10,
        ),
        const Image(height: 400, image: AssetImage('lib/images/card.png')),
        const SizedBox(
          height: 15,
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(14, 4, 0, 2),
          height: 30,
          child: const Text(
            "Debit daily limits",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(222, 222, 222, 1.0),
                spreadRadius: 1,
                offset: Offset(0, 2),
                blurRadius: 3)
          ]),
          child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: limits.length,
              separatorBuilder: ((BuildContext context, index) => const Divider(
                    indent: 16,
                    endIndent: 16,
                    height: 1,
                    thickness: 1,
                  )),
              itemBuilder: ((context, index) => ListTile(
                    title: Text(limits[index]),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.blueAccent,
                    ),
                  ))),
        ),
        const SizedBox(
          height: 20,
        ),
        CustomContainer(
            itemCount: cardActions.length,
            title: cardActions,
            onTap: () {},
            leadingIcon: icons),
      ]),
    );
  }
}
