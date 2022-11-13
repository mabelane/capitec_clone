import 'package:capitec_clone/views/Customs/list_of_strings.dart';
import 'package:capitec_clone/views/Customs/list_of_text.dart';
import 'package:capitec_clone/views/explore/globalone/fees_data.dart';
import 'package:flutter/material.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import '../../../model/fees.dart';
import '../../Customs/tabbar_flex.dart';

class ExploreSavings extends StatelessWidget {
  ExploreSavings({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Savings Account"),
          flexibleSpace: const GradientTabBar(),
        ),
        body: Container(
          color: const Color.fromARGB(255, 245, 245, 245),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                height: MediaQuery.of(context).size.height * .15,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 33, 81, 156),
                      Color.fromARGB(255, 51, 117, 194),
                      Color.fromARGB(255, 59, 130, 169),
                    ]),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(222, 222, 222, 1.0),
                        spreadRadius: 1,
                        offset: Offset(0, 2),
                      )
                    ]),
                child: Column(
                  children: const [
                    Text(
                      "Available Balance",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "R 5500.89",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                //height: MediaQuery.of(context).size.height * 0.6,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 33, 81, 156),
                      Color.fromARGB(255, 51, 117, 194),
                      Color.fromARGB(255, 59, 130, 169),
                    ]),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 57, 178, 248),
                        spreadRadius: 0.5,
                        offset: Offset.zero,
                      )
                    ]),
                child: const TabBar(
                    //physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.fromLTRB(5, 0, 10, 5),
                    labelPadding: EdgeInsets.symmetric(horizontal: 5),
                    indicatorColor: Colors.white,
                    indicatorWeight: 4,
                    labelColor: Colors.white,
                    tabs: [
                      Tab(
                        text: "Benefits",
                      ),
                      Tab(
                        text: "Fees",
                      ),
                    ]),
              ),
              Expanded(
                child: TabBarView(
                    //physics: const NeverScrollableScrollPhysics(),
                    children: [Benefits(), Fees()]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Benefits extends StatelessWidget {
  Benefits({super.key});
  late ListOfStrings benefits = ListOfStrings();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(222, 222, 222, 1.0),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 2))
        ]),
        child: ListOfText(
          itemCount: benefits.benefits.length,
          text: benefits.benefits,
        ),
      ),
    );
  }
}

class Fees extends StatelessWidget {
  Fees({Key? key}) : super(key: key);
  int index = 0;

  final List<Fee> general = [
    Fee(feeCategory: "Payment to Capitec account", amount: 1),
    Fee(feeCategory: "Payment to Capitec account", amount: 1.50),
    Fee(feeCategory: "Payment to Capitec account", amount: 0.50),
    Fee(feeCategory: "Payment to Capitec account", amount: 0),
    Fee(feeCategory: "Payment to Capitec account", amount: 0),
    Fee(feeCategory: "Payment to Capitec account", amount: 0),
    Fee(feeCategory: "Payment to Capitec account", amount: 0),
    Fee(feeCategory: "Payment to Capitec account", amount: 3.50),
    Fee(feeCategory: "Payment to Capitec account", amount: 7),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        const Text("General"),
        const SizedBox(
          height: 10,
        ),
        Container(
          child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Table(
                  //border: TableBorder.all(),
                  columnWidths: const <int, TableColumnWidth>{
                    0: FlexColumnWidth(),
                    1: FixedColumnWidth(60)
                  },
                  children: [
                    TableRow(
                      children: [
                        TableCell(
                            verticalAlignment: TableCellVerticalAlignment.top,
                            child: Text(general[index].feeCategory)),
                        TableCell(
                            child: Container(
                          //height: 30,
                          color: const Color.fromARGB(255, 159, 207, 246),
                          child: Center(
                            child: Text(
                              "R ${general[index].amount}",
                              selectionColor: Colors.amber,
                            ),
                          ),
                        )),
                      ],
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: general.length),
        ),
        Container(
          child: HorizontalDataTable(
            scrollPhysics: const NeverScrollableScrollPhysics(),
            itemCount: general.length,
            leftHandSideColumnWidth: 40,
            rightHandSideColumnWidth: 60,
            rightSideItemBuilder: ((context, index) => Container(
                  //height: 30,
                  color: const Color.fromARGB(255, 159, 207, 246),
                  child: Center(
                    child: Text(
                      "R ${general[index].amount}",
                      selectionColor: Colors.amber,
                    ),
                  ),
                )),
            leftSideItemBuilder: _generateFirstColumnRow,
          ),
        ),
      ],
    ));
  }

  Widget _generateFirstColumnRow(BuildContext context, int index) {
    return Container(
      width: 100,
      height: 52,
      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
      child: Text(general[index].feeCategory),
    );
  }

  Widget _generateRightHandSideColumnRow(BuildContext context, int index) {
    return Container(
      width: 100,
      height: 52,
      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
      child: const Text("general[index].amount"),
    );
  }
}


// Table(
//             //border: TableBorder.all(),
//             columnWidths: const <int, TableColumnWidth>{
//               0: FlexColumnWidth(),
//               1: FixedColumnWidth(60)
//             },
//             children: [
//               TableRow(
//                 children: [
//                   TableCell(
//                       verticalAlignment: TableCellVerticalAlignment.top,
//                       child: Text(general[index].feeCategory)),
//                   TableCell(
//                       child: Container(
//                     height: 30,
//                     color: const Color.fromARGB(255, 159, 207, 246),
//                     child: Center(
//                       child: Text(
//                         "R ${general[index].amount}",
//                         selectionColor: Colors.amber,
//                       ),
//                     ),
//                   )),
//                 ],
//               ),
//             ],
//           )