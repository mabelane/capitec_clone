import 'package:capitec_clone/views/explore/globalone/insure/insure.dart';
import 'package:capitec_clone/views/explore/globalone/save/save.dart';
import 'package:flutter/material.dart';
import '../../model/explore_accounts.dart';
import '../Customs/custom_card.dart';
import 'globalone/credit/credit.dart';
import 'globalone/explore_savings.dart';

class GlobalOneExplore extends StatelessWidget {
  GlobalOneExplore({Key? key}) : super(key: key);

  List<ExploreAccounts> explreAccounts = [
    ExploreAccounts(
        leadingImage: const Image(image: AssetImage('lib/images/savings.png')),
        title: "Savings Account",
        subTitle: "Transactional savings account",
        page: ExploreSavings()),
    ExploreAccounts(
      leadingImage: const Image(image: AssetImage('lib/images/save.png')),
      title: "Save",
      subTitle: "Flexible, Fixed-Term & Tax-Free Savings",
      page: Save(),
    ),
    ExploreAccounts(
      leadingImage: const Image(image: AssetImage('lib/images/insure.png')),
      title: "Insure",
      subTitle: "Funeral Plan",
      page: Insure(),
    ),
    ExploreAccounts(
        leadingImage: const Image(image: AssetImage('lib/images/credit.png')),
        title: "Credit",
        subTitle: "Credit Card, Facility & Loan",
        page: Credit())
  ];

  List<Color> titleColor = const [
    Color(0xFF459ada),
    Color(0xFF1c476a),
    Color(0xFF61727d),
    Color(0xFFb8463e),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 245, 245, 245),
        child: ListView.builder(
            itemCount: explreAccounts.length,
            itemBuilder: ((context, index) => CustomCard(
                titleTitle: explreAccounts[index].title,
                leadingIcon: explreAccounts[index].leadingImage,
                subSubtitle: explreAccounts[index].subTitle,
                textColor: titleColor[index],
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => explreAccounts[index].page)));
                }))));
  }
}
