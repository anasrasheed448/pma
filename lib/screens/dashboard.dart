import 'package:flutter/material.dart';
import 'package:pma/widgets/bottom_bar.dart';
import 'package:pma/widgets/custom_dashboard_card.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  String? value = "";
  @override
  Widget build(BuildContext context) {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Board",
                    style: TextStyle(
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const Icon(Icons.person),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 10.0,
                ),
                child: Container(
                  height: size.height * 0.07,
                  color: Colors.grey.shade300,
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      canvasColor: Colors.grey.shade300,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        elevation: 0,
                        isExpanded: true,
                        hint: Center(
                          child: Text(
                            value == "" ? "Sort By" : value.toString(),
                          ),
                        ),
                        onChanged: (_value) {
                          setState(() {
                            value = _value;
                          });
                        },
                        items: const [
                          DropdownMenuItem<String>(
                            value: "Daily",
                            child: Center(
                              child: Text(
                                "Daily",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: "Weekly",
                            child: Center(
                              child: Text(
                                "Weekly",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: "Date Range",
                            child: Center(
                              child: Text(
                                "Date Range",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
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
            ],
            // ),
          )),
    );
  }
}
