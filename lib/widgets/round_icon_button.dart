import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundedIconButoon extends StatelessWidget {
  final Function() onPressedValue;
  final IconData iconType;
  final int colorValue;
  final Color iconColorVal;

  // ignore: use_key_in_widget_constructors
  const RoundedIconButoon(
      {required this.onPressedValue,
      required this.iconType,
      required this.colorValue,
      required this.iconColorVal});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(colorValue),
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: IconButton(
        onPressed: onPressedValue,
        icon: FaIcon(
          iconType,
          color: iconColorVal,
        ),
      ),
    );
  }
}
