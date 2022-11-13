import 'package:capitec_clone/model/credit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../credit_card.dart';

class Credit extends StatelessWidget {
  Credit({Key? key}) : super(key: key);

  List<Credits> credit = [
    Credits(credName: "Loan", desc: "Personalised credit and terms"),
    Credits(credName: "Credit card", desc: "Get up to R500 000 credit limit"),
    Credits(
        credName: "Access facility",
        desc: "Get up to R500 000 revolving credit"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          shadowColor: Colors.black,
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 191, 40, 29),
          title: const Text("Credit")),
      body: Container(
        color: const Color.fromARGB(255, 245, 245, 245),
        child: ListView(
          children: [
            Container(
                height: MediaQuery.of(context).size.height * .18,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 191, 40, 29),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(222, 222, 222, 1.0),
                        spreadRadius: 1,
                        offset: Offset(0, 2),
                      )
                    ])),
            const SizedBox(
              height: 10,
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 45,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("Get Estimate"))),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 45,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(
                          color: Color(0xFF459ada), width: 0.8)),
                  onPressed: () {},
                  child: const Text("Credit Rating")),
            ),
            const SizedBox(
              height: 9,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: credit.length,
              itemBuilder: ((context, index) => Card(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                    child: ListTile(
                      title: Text(
                        credit[index].credName,
                        style: const TextStyle(color: Colors.red),
                      ),
                      subtitle: Text(credit[index].desc),
                      trailing: const Icon(Icons.keyboard_arrow_right_outlined),
                      onTap: () {},
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

///** Access Facility content */

class AccessFacility extends StatefulWidget {
  const AccessFacility({Key? key}) : super(key: key);

  @override
  State<AccessFacility> createState() => _AccessFacilityState();
}

class _AccessFacilityState extends State<AccessFacility> {
  String data = "";

  getAccessFacilityText() async {
    String getText =
        await rootBundle.loadString("textfiles/accessfacility.txt");

    setState(() {
      data = getText;
    });
  }

  @override
  void initState() {
    getAccessFacilityText();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 201, 13, 0),
          centerTitle: true,
          title: const Text(
            "Access Facility",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
          width: MediaQuery.of(context).size.width,
          height: 250,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 3,
              blurRadius: 4,
            )
          ]),
          child: Text(
            data,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        )));
  }
}



// Container(
//         color: const Color.fromRGBO(222, 222, 222, 1.0),
//         child: Column(
//           children: [
//             Container(
//                 height: MediaQuery.of(context).size.height * .18,
//                 decoration: const BoxDecoration(
//                     color: Color.fromARGB(255, 191, 40, 29),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Color.fromRGBO(222, 222, 222, 1.0),
//                         spreadRadius: 1,
//                         offset: Offset(0, 2),
//                       )
//                     ])),
//             const SizedBox(
//               height: 10,
//             ),
//             SizedBox(
//                 width: MediaQuery.of(context).size.width / 1.05,
//                 height: 45,
//                 child: ElevatedButton(
//                     onPressed: () {}, child: const Text("Get Estimate"))),
//             const SizedBox(
//               height: 10,
//             ),
//             SizedBox(
//               width: MediaQuery.of(context).size.width / 1.05,
//               height: 45,
//               child: OutlinedButton(
//                   style: ButtonStyle(
//                       side: MaterialStateProperty.all(
//                           BorderSide(color: Color(0xFF459ada), width: 0.8))),
//                   onPressed: () {},
//                   child: const Text("Credit Rating")),
//             ),
//             const SizedBox(
//               height: 9,
//             ),
//             ListView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               itemCount: credit.length,
//               itemBuilder: ((context, index) => Card(
//                     margin:
//                         const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
//                     child: ListTile(
//                       title: Text(
//                         credit[index].credName,
//                         style: TextStyle(color: Colors.red),
//                       ),
//                       subtitle: Text(credit[index].desc),
//                       trailing: const Icon(Icons.keyboard_arrow_right_outlined),
//                       onTap: () {},
//                     ),
//                   )),
//             )
//           ],
//         ),
//       ),