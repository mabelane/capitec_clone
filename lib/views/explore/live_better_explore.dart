import 'package:flutter/material.dart';

import '../Customs/custom_card.dart';

class LiveBetterExplore extends StatelessWidget {
  const LiveBetterExplore({Key? key}) : super(key: key);

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
              titleTitle: "Live Better",
              subSubtitle: "Get rewards for free",
              onTap: () {},
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
              child: Row(
                children: const [
                  Text(
                    "Widgets",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  )
                ],
              ),
            ),
            //******* Live Better Academy card */

            CustomCard(
              titleTitle: "Live Better Academy",
              subSubtitle: "Be Money Smart with free courses",
              onTap: () {},
            ),

            //******* Easy Enquities Card */
            CustomCard(
              titleTitle: "EasyEnquities",
              subSubtitle: "Investing made easy",
              textColor: const Color.fromARGB(255, 233, 4, 4),
              onTap: () {},
            ),

            //*********** Get Smarter card */
            CustomCard(
              titleTitle: "GetSmarter",
              subSubtitle: "Study futher for less",
              textColor: const Color.fromARGB(198, 18, 18, 18),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
