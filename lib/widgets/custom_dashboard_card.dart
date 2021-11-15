import 'package:flutter/material.dart';

class CustomDashBoardCard extends StatelessWidget {
  final cardIcon;
  final cardText;
  final cardSubText;
  final iconColor;

  CustomDashBoardCard(
      {required this.cardIcon,
      required this.cardText,
      required this.cardSubText,
      required this.iconColor});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70),
        ),
        height: size.width * 0.35,
        width: size.width * 0.35,
        // padding: EdgeInsets.all(size.width * 0.10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Card(
              color: Colors.grey[200],
              child: Container(
                height: size.height * 0.05,
                width: size.width * 0.10,
                child: Center(
                  child: Icon(
                    cardIcon,
                    color: iconColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              cardText,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Text(cardSubText),
          ],
        ),
      ),
    );
  }
}
