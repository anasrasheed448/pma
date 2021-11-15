import 'package:flutter/material.dart';
import 'package:pma/widgets/bottom_bar.dart';
import 'package:pma/widgets/custom_dashboard_card.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

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
        Container(
            height: size.height * 0.90,
            padding: EdgeInsets.only(
                top: size.width * 0.05,
                left: size.width * 0.05,
                right: size.width * 0.05),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(size.width * 0.05),
                  bottomRight: Radius.circular(size.width * 0.05)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: ListTile(
                    leading: Text(
                      "Board",
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    trailing: Icon(Icons.person),
                  ),
                ),
                Flexible(
                  child: Container(
                    height: size.height * 0.90,
                    child: GridView.builder(
                        itemCount: widgetItems.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, crossAxisSpacing: 4),
                        itemBuilder: (context, i) {
                          return CustomDashBoardCard(
                              cardIcon: Icons.person,
                              cardText: widgetItems[i]["name"],
                              cardSubText: widgetItems[i]["subText"],
                              iconColor: widgetItems[i]["color"]);
                        }),
                  ),
                ),
              ],
              // ),
            ));
  }
}
