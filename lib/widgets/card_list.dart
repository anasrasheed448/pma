import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardList extends StatelessWidget {
  String workType;
  String titleText;
  String subtitleText;
  String time;
  int person;

  CardList(
    this.workType,
    this.titleText,
    this.subtitleText,
    this.time,
    this.person, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.03,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
            ),
            alignment: Alignment.centerLeft,
            child: Text(
              workType,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.orange,
              ),
            ),
          ),
          const Divider(),
          Card(
            elevation: 0.0,
            color: Colors.grey.shade100,
            child: ListTile(
              horizontalTitleGap: 0,
              minLeadingWidth: MediaQuery.of(context).size.width * 0.05,
              leading: Container(
                decoration: const BoxDecoration(
                  color: Colors.orange,
                ),
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.008,
              ),
              title: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Text(titleText),
              ),
              subtitle: Text(subtitleText),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              const Icon(
                Icons.alarm_on,
                color: Colors.grey,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Text(
                time,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              const Icon(
                Icons.person,
                color: Colors.grey,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Text(
                "$person person",
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
