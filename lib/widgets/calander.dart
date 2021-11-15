import 'package:flutter/material.dart';

class Calander extends StatelessWidget {
  const Calander({Key? key}) : super(key: key);

  Column horizontalCalender(String day, String date, BuildContext? context) {
    return Column(
      children: [
        Text(
          day.toUpperCase(),
          style: const TextStyle(color: Colors.grey),
        ),
        SizedBox(
          height: MediaQuery.of(context!).size.height * 0.005,
        ),
        Text(
          date,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.blueGrey,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            horizontalCalender("mon", "10", context),
            horizontalCalender("tues", "11", context),
            horizontalCalender("wed", "12", context),
            horizontalCalender("thur", "13", context),
            horizontalCalender("fri", "14", context),
            horizontalCalender("sat", "15", context),
            horizontalCalender("sun", "16", context),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.03),
          child: const Divider(
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
