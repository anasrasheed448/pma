import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pma/widgets/table_calander.dart';

import 'screens/login.dart';

void main(List<String> args) {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white, // navigation bar color
    statusBarColor: Colors.purple, // status bar color
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Poppins"),
      home: const LoginScreen(),
    );
  }
}
