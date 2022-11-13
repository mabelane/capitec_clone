import 'package:capitec_clone/views/Customs/list_of_strings.dart';
import 'package:capitec_clone/views/Customs/list_of_text.dart';
import 'package:flutter/material.dart';

import '../../../Customs/Details.dart';

class EasyEquites extends StatelessWidget {
  EasyEquites({super.key});
  String image = 'lib/images/easyequities.png';
  ListOfStrings features = ListOfStrings();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 12, 136, 219),
          title: const Text("Details"),
        ),
        body: Container(
          child: ListView(
            children: [
              Details(
                image: image,
                title: "EasyEquities",
                subtitle: "Saving & Investments",
              ),
              Container(
                  width: MediaQuery.of(context).size.width / 1.01,
                  height: 50,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Open"))),
              Container(
                  color: Colors.white,
                  child: SwitchListTile(
                    secondary: const Icon(
                      Icons.add_circle_outline_rounded,
                      color: Colors.blue,
                    ),
                    title: const Text("Add to Home"),
                    value: true,
                    onChanged: (value) {},
                  )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Center(
                      child: Text(
                        "Investing made easy. Buy shares on SA's easiest platform! No minimums and platform fees.",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Features",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ListOfText(
                        itemCount: features.easyEquitiesFeatures.length,
                        text: features.easyEquitiesFeatures),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "About",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                        "EasyEquities is an investment platform that makes investing easy for everyone. The platform is low cost and provides a rewarding & friendly user experience. Trust is built through transparency as well as entertaining & engaging content, while investor confidence grows through education & shared experiences. Previously, investing in equities was seen as an elite activity and was, to a great extent, an intimidating (and often unaffordable) option for the average Joe. EasyEquities makes investing accessible for all, enabling and empowering people to create their own destiny through easy and affordable access to financial markets.",
                        strutStyle: StrutStyle(height: 1.5)),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Please Note:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "EasyEquities is a product of First World Trader (Pty) Ltd t/a EasyEquities which is an authorized Financial Services Provider (FSP number 22588). All trades on the EasyEquities platform are subject to the legal terms and conditions to which you agree to be bound. The EasyEquities platform enables users to invest in securities which includes whole shares and fractional share rights (FSRs). EasyEquities acts as an agent for the issue of whole shares, where the investor is the registered owner of those shares, entitled to dividends, participation in corporate actions and all the economic benefits and risks associated with share ownership",
                      strutStyle: StrutStyle(height: 1.5),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "In respect of FSRs, EasyEquities acts as principal to a contract for difference issued to the investor, where the investor will have a contractual claim against EasyEquities to the economic benefits and risks associated with share ownership (price movements and dividends) without having ownership rights in the underlying share. Fractional share rights (FSRs) which are issued through a contract for difference, are an over the counter derivative. Unlike whole shares, FSRs do not carry any voting rights. As the investor makes further investments in FSRs and ultimately ends up with a whole share, the contract for difference is closed out and ownership whole share is delivered to the investor. The availability of any share on the EasyEquities platform is based on various factors but is not an indication of value and does not mean that any share is an appropriate investment for you. The availability of any share on the browse shares page does not necessarily indicate any contractual relationship between EasyEquities and the listed company, or the payment of fees for services. Brand logos are owned by the respective companies and not by EasyEquities. The use of a company's brand logo does not represent an endorsement of EasyEquities by the company, nor an endorsement of the company by EasyEquities, nor does it necessarily imply any contractual relationship. Further investment disclosures are available on the EasyEquities website.",
                      strutStyle: StrutStyle(height: 1.5),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "* Note exchange prices are delayed in accordance with regional exchange rules. South African prices are delayed by 15 minutes; North American prices are delayed by 15 minutes; Australian prices are delayed by 20 minutes. EasyEquities is a subsidiary of Purple Group Limited, a company listed on the JSE Limited (PPE)",
                      strutStyle: StrutStyle(height: 1.5),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
