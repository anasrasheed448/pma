import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pma/constraits&style/style.dart';
import 'package:pma/widgets/bottom_bar.dart';
import 'package:pma/widgets/custom_button.dart';
import 'package:pma/widgets/round_icon_button.dart';
import 'package:pma/widgets/text_field_label.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: _height * 0.02),
                      Container(
                        margin: EdgeInsets.all(_height * 0.05),
                        alignment: Alignment.topCenter,
                        width: _width * 0.5,
                        height: _height * 0.2,
                        child: Image.asset(
                          "assets/images/logo2.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const TextFieldLabels(
                        icon: Icons.email_outlined,
                        text: "Email",
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.green,
                          contentPadding: EdgeInsets.zero,
                          hintText: "User@gmail.com",
                        ),
                      ),
                      const TextFieldLabels(
                        icon: Icons.lock_clock_outlined,
                        text: "Password",
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: Color(0xff787468),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _height * 0.02,
                      ),
                      CustomButton(
                          text: "Sign In",
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (ct) => const BottomNavBar()));
                          }),
                      TextButton(
                          onPressed: () async {
                            await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2100));
                          },
                          child: Text(
                            "Forgot Password?",
                            style: txtStyle,
                          )),
                      // SizedBox(
                      //   width: _width * .03,
                      // ),
                      // Row(
                      //   children: [
                      //     Text(
                      //       "Or Sign in with",
                      //       style: txtStyle,
                      //     ),
                      //     Container(
                      //       color: Colors.grey,
                      //       width: _width * 0.6,
                      //       height: 0.3,
                      //     ),
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: _height * 0.02,
                      // ),
                      // Row(
                      //   children: [
                      //     SizedBox(width: _width * 0.04),
                      //     RoundedIconButoon(
                      //       colorValue: 0xff28589c,
                      //       onPressedValue: () {},
                      //       iconType: FontAwesomeIcons.facebookF,
                      //       iconColorVal: Colors.white,
                      //     ),
                      //     SizedBox(width: _width * 0.04),
                      //     RoundedIconButoon(
                      //       colorValue: 0xfffffff,
                      //       onPressedValue: () {},
                      //       iconType: FontAwesomeIcons.google,
                      //       iconColorVal: Colors.red,
                      //     ),
                      //     SizedBox(width: _width * 0.04),
                      //     RoundedIconButoon(
                      //       colorValue: 0xfffffff,
                      //       onPressedValue: () {},
                      //       iconType: FontAwesomeIcons.twitter,
                      //       iconColorVal: Colors.blue,
                      //     ),
                      //     SizedBox(width: _width * 0.04),
                      //     RoundedIconButoon(
                      //       colorValue: 0xfffffff,
                      //       onPressedValue: () {},
                      //       iconType: FontAwesomeIcons.instagram,
                      //       iconColorVal: Colors.red,
                      //     ),
                      //   ],
                      // ),
                      // SizedBox(height: _height * 0.02),
                    ],
                  ),
                ),
              ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: const [
              //         Text("Don't have account? "),
              //         Text(
              //           "Create Account",
              //           style: TextStyle(color: Colors.green),
              //         ),
              //       ],
              //     ),
              //     SizedBox(
              //       height: _height * 0.02,
              //     )
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
