import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const CustomButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff006139),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      // margin: const EdgeInsets.only(
      //   // top: 30,
      //   left: 10,
      //   right: 10,
      // ),
      height: MediaQuery.of(context).size.height * 0.08,
      width: double.infinity,
      child: MaterialButton(
        // style: ElevatedButton.styleFrom(
        //   shape: const RoundedRectangleBorder(
        //     borderRadius: BorderRadius.all(Radius.circular(10)),
        //   ),
        // ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
