import 'package:flutter/material.dart';

import '../Customs/custom_card.dart';

class LiveBetterExplore extends StatelessWidget {
  LiveBetterExplore({Key? key}) : super(key: key);

  List<String> title = ["Live Better"];
  List<String> subtitle = ["Real rewars, real cashback"];
  List<Widget> leadingImage = const [
    Image(image: AssetImage('lib/images/livebetter.png')),
  ];
  List<Color> titleColor = const [
    Color(0xFF2c3be9),
  ];

  List<String> widgetTitle = [
    "Live Better Academy",
    "EasyEquites",
    "GetSmarter",
  ];
  List<String> widgetSubtitle = [
    "Be Moneey Smart with free courses",
    "Investing made easy",
    "Study further for less",
  ];
  List<Widget> widgetLeadingImage = const [
    Image(image: AssetImage('lib/images/academy.png')),
    Image(image: AssetImage('lib/images/easyequities.png')),
    Image(image: AssetImage('lib/images/getsmarter.png')),
  ];
  List<Color> widgetTitleColor = const [
    Color(0xFF2c3be9),
    Color(0xFFd9364c),
    Color(0xFF0f2033),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 245, 245, 245),
      child: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: title.length,
                itemBuilder: ((context, index) => CustomCard(
                    titleTitle: title[index],
                    leadingIcon: leadingImage[index],
                    subSubtitle: subtitle[index],
                    textColor: titleColor[index],
                    onTap: () {}))),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(18, 15, 0, 5),
            child: const Text(
              "Widgets",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widgetTitle.length,
                itemBuilder: ((context, index) => CustomCard(
                    titleTitle: widgetTitle[index],
                    leadingIcon: widgetLeadingImage[index],
                    subSubtitle: widgetSubtitle[index],
                    textColor: widgetTitleColor[index],
                    onTap: () {}))),
          ),
        ],
      ),
    );
  }
}
