import 'package:flutter/material.dart';
import '../../model/explore_accounts.dart';
import '../Customs/custom_card.dart';
import 'explore_livebetter/easy_equities/easyequites.dart';
import 'explore_livebetter/get_smarter.dart';
import 'explore_livebetter/livebetteracademy/live_better_academy.dart';

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

  List<ExploreAccounts> explreAccounts = [
    ExploreAccounts(
        leadingImage: const Image(image: AssetImage('lib/images/academy.png')),
        title: "Live Better Academy",
        subTitle: "Be Moneey Smart with free courses",
        page: LiveBetterAcademy()),
    ExploreAccounts(
      leadingImage:
          const Image(image: AssetImage('lib/images/easyequities.png')),
      title: "EasyEquites",
      subTitle: "Investing made easy",
      page: EasyEquites(),
    ),
    ExploreAccounts(
      leadingImage: const Image(image: AssetImage('lib/images/getsmarter.png')),
      title: "GetSmarter",
      subTitle: "Study further for less",
      page: GetSmarter(),
    ),
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
              color: const Color.fromARGB(255, 245, 245, 245),
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: explreAccounts.length,
                  itemBuilder: ((context, index) => CustomCard(
                      titleTitle: explreAccounts[index].title,
                      leadingIcon: explreAccounts[index].leadingImage,
                      subSubtitle: explreAccounts[index].subTitle,
                      textColor: widgetTitleColor[index],
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) =>
                                explreAccounts[index].page)));
                      })))),
        ],
      ),
    );
  }
}
