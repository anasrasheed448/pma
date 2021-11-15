import 'package:flutter/material.dart';

class TextFieldLabels extends StatelessWidget {
  final IconData icon;
  final String text;
  const TextFieldLabels({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.01,
          top: MediaQuery.of(context).size.height * 0.04),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Icon(
            icon,
            color: const Color(0xff787468),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: const TextStyle(
                color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
