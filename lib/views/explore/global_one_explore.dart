import 'package:flutter/material.dart';
import '../Customs/custom_card.dart';
import 'credit.dart';

class GlobalOneExplore extends StatelessWidget {
  GlobalOneExplore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 245, 245, 245),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            CustomCard(
              titleTitle: "Savings Account",
              subSubtitle: "Transactional savings account",
              textColor: Colors.blueAccent,
              onTap: () {},
            ),
            CustomCard(
              titleTitle: "Save",
              subSubtitle: "Flexible, Fixed-Term & Tax-Free Savings",
              textColor: const Color.fromARGB(255, 1, 60, 90),
              onTap: () {},
            ),
            CustomCard(
                titleTitle: "Insure",
                subSubtitle: "Funeral Plan",
                onTap: () {}),
            CustomCard(
                titleTitle: "Credit",
                subSubtitle: "Credit card, Facility & Loan",
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Credit())));
                }),
          ],
        ),
      ),
    );
  }
}
