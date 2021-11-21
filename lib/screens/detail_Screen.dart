// ignore_for_file: prefer_const_literals_to_create_immutables, file_names

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pma/constraits&style/text_constant.dart';
import 'package:pma/widgets/bottom_bar.dart';
import 'package:pma/widgets/calander.dart';
import 'package:pma/widgets/card_list.dart';
import 'package:pma/widgets/dropdown.dart';

class DetailScreen extends StatelessWidget {
  List dropDownItem = [
    {
      "value1": "weekly",
      "value2": "Monthly",
      "value3": "Date Range",
      "text1": "Weekly",
      "text2": "Monthly",
      "text3": "Date Range"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade300,
          elevation: 0,
        ),
        // backgroundColor: Colors.purple,
        // bottomNavigationBar: const BottomN%avBar(),
        body: Container(
          color: Colors.grey.shade300,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  height: MediaQuery.of(context).size.height * 0.080,
                  child: CustomDropdown(
                    value1: dropDownItem[0]["value1"],
                    value2: dropDownItem[0]["value2"],
                    value3: dropDownItem[0]["value3"],
                    txt1: dropDownItem[0]["text1"],
                    txt2: dropDownItem[0]["text2"],
                    txt3: dropDownItem[0]["text3"],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Text(
                //         "${TextConstant.en["DetailScreen"]["Task"]}",
                //         style: const TextStyle(
                //           fontFamily: "Poppins",
                //           fontWeight: FontWeight.bold,
                //           fontSize: 20,
                //         ),
                //       ),
                //       const CircleAvatar(
                //         radius: 20,
                //         backgroundColor: Colors.blue,
                //       ),
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.03,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         const Text(
                //           "May,01,2020",
                //           style: TextStyle(
                //             fontFamily: "Poppins",
                //             // fontWeight: FontWeight.bold,
                //             fontSize: 14,
                //           ),
                //         ),
                //         const Text(
                //           "Today",
                //           style: TextStyle(
                //             fontFamily: "Poppins",
                //             fontWeight: FontWeight.bold,
                //             fontSize: 20,
                //           ),
                //         ),
                //       ],
                //     ),
                //     Container(
                //       decoration: BoxDecoration(
                //         color: Colors.orange,
                //         borderRadius: BorderRadius.circular(10),
                //       ),
                //       child: MaterialButton(
                //         onPressed: () {},
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: [
                //             const Icon(
                //               Icons.add,
                //               color: Colors.white,
                //             ),
                //             const SizedBox(
                //               width: 4,
                //             ),
                //             Text(
                //               "${TextConstant.en["DetailScreen"]["AddTask"]}",
                //               style: const TextStyle(
                //                 color: Colors.white,
                //                 fontSize: 16,
                //                 fontWeight: FontWeight.w600,
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.03,
                // ),
                // const Calander(),
                Flexible(
                  // height: MediaQuery.of(context).size.height * 0.5,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: detailData.length,
                      itemBuilder: (context, index) {
                        // index--;

                        return Column(
                          children: [
                            CardList(
                              "${detailData[index]['title']}",
                              "${detailData[index]['rooms'][0]}",
                              "${detailData[index]['rooms'][1]}",
                              "10 - 11 AM",
                              2,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.05,
                            ),
                          ],
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Map<String, dynamic>> detailData = [
    {
      'title': 'Occupancy',
      'rooms': ['Total no Of Rooms', '54'],
      'No Show': '02',
      'Room Rev': '30339',
      'Walk in Rooms': '08',
      'OTA': '27',
      'TA': '3',
      'Management': '1',
      'Corporate': '1',
      'Checked In Room': '36',
      'Check out rooms': '20'
    },
    {
      'title': 'Revenue',
      'rooms': ['Opening Balance cash', '10477'],
    },
    {
      'title': 'Expenses',
      'rooms': ['Employee Convince', '500'],
    }
  ];
}
