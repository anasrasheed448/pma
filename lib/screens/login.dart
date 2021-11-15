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
        child: Container(
          margin: EdgeInsets.only(
              top: _height * 0.05.toDouble(),
              left: _width * 0.02,
              right: _width * 0.02),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo2.png",
                width: _width * 0.24,
                height: _height * 0.14,
              ),
              const TextFieldLabels(
                icon: Icons.email_outlined,
                text: "Email",
              ),
              Container(
                margin: EdgeInsets.only(
                  left: _width * 0.02,
                  right: _width * 0.02,
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    focusColor: Colors.green,
                    contentPadding: EdgeInsets.zero,
                    hintText: "User@gmail.com",
                  ),
                  //focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green))
                ),
              ),
              const TextFieldLabels(
                icon: Icons.lock_clock_outlined,
                text: "Password",
              ),
              Container(
                margin: EdgeInsets.only(
                  left: _width * 0.02,
                  right: _width * 0.02,
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Color(0xff787468),
                    ),
                  ),
                ),
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
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: txtStyle,
                  )),
              Container(
                margin: EdgeInsets.only(top: _height * 0.05),
                child: Row(
                  children: [
                    SizedBox(
                      width: _width * .03,
                    ),
                    Row(
                      children: [
                        Text(
                          "Or Sign in with",
                          style: txtStyle,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          color: Colors.grey,
                          width: _width * 0.6,
                          height: 0.3,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: _height * 0.04.toDouble()),
                child: Row(
                  children: [
                    SizedBox(width: _width * 0.04),
                    RoundedIconButoon(
                      colorValue: 0xff28589c,
                      onPressedValue: () {},
                      iconType: FontAwesomeIcons.facebookF,
                      iconColorVal: Colors.white,
                    ),
                    SizedBox(width: _width * 0.04),
                    RoundedIconButoon(
                      colorValue: 0xfffffff,
                      onPressedValue: () {},
                      iconType: FontAwesomeIcons.google,
                      iconColorVal: Colors.red,
                    ),
                    SizedBox(width: _width * 0.04),
                    RoundedIconButoon(
                      colorValue: 0xfffffff,
                      onPressedValue: () {},
                      iconType: FontAwesomeIcons.twitter,
                      iconColorVal: Colors.blue,
                    ),
                    SizedBox(width: _width * 0.04),
                    RoundedIconButoon(
                      colorValue: 0xfffffff,
                      onPressedValue: () {},
                      iconType: FontAwesomeIcons.instagram,
                      iconColorVal: Colors.red,
                    ),
                  ],
                ),
              ),
              Expanded(child: Container()),
              Container(
                margin: EdgeInsets.only(
                    top: _height * 0.07, bottom: _height * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Don't have account? "),
                    Text(
                      "Create Account",
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
