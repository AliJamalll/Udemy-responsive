import 'dart:io';

import 'package:flutter/material.dart';

import 'desktop.dart';
import 'mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal
      ),
      home:  LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
   print(constraints.minWidth.toInt());

   // String os = Platform.operatingSystem;
   // print(os);

   if(constraints.minWidth.toInt() <= 700)
     return mobileScreen();
   return desktopScreen();
    },
      ),
    );
  }
}

