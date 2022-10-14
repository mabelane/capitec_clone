import 'package:flutter/material.dart';
import '../Customs/custom_card.dart';
import 'credit.dart';

class GlobalOneExplore extends StatelessWidget {
  GlobalOneExplore({Key? key}) : super(key: key);

  List<Color> titleColor = const [
    Color(0xFF459ada),
    Color(0xFF1c476a),
    Color(0xFF61727d),
    Color(0xFFb8463e),
  ];

  List<Widget> leadingImages = const [
    Image(image: AssetImage('lib/images/savings.png')),
    Image(image: AssetImage('lib/images/save.png')),
    Image(image: AssetImage('lib/images/insure.png')),
    Image(image: AssetImage('lib/images/credit.png')),
  ];

  List<String> title = const [
    "Savings Account",
    "Save",
    "Insure",
    "Credit",
  ];
  List<String> subtitle = const [
    "Transactional savings account",
    "Flexible, Fixed-Term & Tax-Free Savings",
    "Funeral Plan",
    "Credit Card, Facility & Loan",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 245, 245, 245),
        child: ListView.builder(
            itemCount: title.length,
            itemBuilder: ((context, index) => CustomCard(
                titleTitle: title[index],
                leadingIcon: leadingImages[index],
                subSubtitle: subtitle[index],
                textColor: titleColor[index],
                onTap: () {}))));
  }
}
