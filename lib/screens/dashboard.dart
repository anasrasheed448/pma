import 'package:flutter/material.dart';
import 'package:pma/constraits&style/text_constant.dart';
import 'package:pma/screens/detail_Screen.dart';
import 'package:pma/widgets/bottom_bar.dart';
import 'package:pma/widgets/custom_dashboard_card.dart';
import 'package:pma/widgets/dropdown.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    List dropDownItem = [
      {
        "value1": "weekly",
        "value2": "Monthly",
        "value3": "Date Range",
        "text1": "Weekly",
        "text2": "Monthly",
        "text3": "Date Range"
      },
      {
        "value1": "Option1",
        "value2": "Option2",
        "value3": "Option3",
        "text1": "Option1",
        "text2": "Option2",
        "text3": "Option3"
      },
    ];
    List widgetItems = [
      {
        "name": "Pesonal",
        "icon": Icons.person,
        "subText": "17 Task",
        "color": Colors.purple
      },
      {
        "name": "Work",
        "icon": Icons.work,
        "subText": "10 Task",
        "color": Colors.red
      },
      {
        "name": "Private",
        "icon": Icons.lock,
        "subText": "2 Task",
        "color": Colors.green
      },
      {
        "name": "Meeting",
        "icon": Icons.person,
        "subText": "5 Task",
        "color": Colors.purple
      },
      {
        "name": "Events",
        "icon": Icons.event,
        "subText": "3 Task",
        "color": Colors.orange
      },
      {
        "name": "create Board",
        "icon": Icons.add,
        "subText": "",
        "color": Colors.green
      },
    ];
    var size = MediaQuery.of(context).size;
    return
        // Scaffold(
        //     backgroundColor: Colors.purple,
        //     bottomNavigationBar: const BottomNavBar(),
        //     body:
        ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(size.width * 0.05),
          bottomRight: Radius.circular(size.width * 0.05)),
      child: Container(
          height: size.height * 0.90,
          padding: EdgeInsets.only(
              top: size.width * 0.05,
              left: size.width * 0.05,
              right: size.width * 0.05),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            // borderRadius: BorderRadius.only(
            //     bottomLeft: Radius.circular(size.width * 0.05),
            //     bottomRight: Radius.circular(size.width * 0.05)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: size.height * 0.03,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       "Board",
              //       style: TextStyle(
              //           color: Colors.blue[900],
              //           fontWeight: FontWeight.bold,
              //           fontSize: 20),
              //     ),
              //     const Icon(Icons.person),
              //   ],
              // ),
              SizedBox(
                height: size.height * 0.17,
                child: Column(
                    children: dropDownItem
                        .map(
                          (e) => CustomDropdown(
                            value1: e["value1"],
                            value2: e["value2"],
                            value3: e["value3"],
                            txt1: e["text1"],
                            txt2: e["text2"],
                            txt3: e["text3"],
                          ),
                        )
                        .toList()),
              ),
              Flexible(
                child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: widgetItems.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, crossAxisSpacing: 4),
                    itemBuilder: (context, i) {
                      return CustomDashBoardCard(
                          cardIcon: Icons.person,
                          cardText: widgetItems[i]["name"],
                          cardSubText: widgetItems[i]["subText"],
                          iconColor: widgetItems[i]["color"]);
                    }),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                color: Colors.orangeAccent,
                // margin: EdgeInsets.all(10),
                width: size.width * 0.40,
                height: size.height * 0.07,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "See More",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(
                        Icons.remove_red_eye,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
            ],

            // ),
          )),
    );
  }
}
