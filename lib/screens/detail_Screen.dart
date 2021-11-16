// ignore_for_file: prefer_const_literals_to_create_immutables, file_names

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pma/constraits&style/text_constant.dart';
import 'package:pma/widgets/calander.dart';
import 'package:pma/widgets/card_list.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
          //  Scaffold(
          //   backgroundColor: Colors.purple,
          //   bottomNavigationBar: const BottomNavBar(),
          //   body:
          ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        child: Container(
          color: Colors.grey.shade300,
          height: MediaQuery.of(context).size.height * 0.9,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${TextConstant.en["DetailScreen"]["Task"]}",
                        style: const TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.blue,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "May,01,2020",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            // fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        const Text(
                          "Today",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              "${TextConstant.en["DetailScreen"]["AddTask"]}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const Calander(),
                Flexible(
                  // height: MediaQuery.of(context).size.height * 0.5,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) => Column(
                      children: [
                        CardList(
                          "Urgent",
                          "New Web UI Design Project",
                          "New Web UI Design Project",
                          "10 - 11 AM",
                          2,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // ),
    );
  }
}
