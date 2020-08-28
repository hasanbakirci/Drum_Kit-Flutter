import 'package:flutter/material.dart';

import 'DrumKitView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        home:Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bg.png"), fit: BoxFit.cover)),
          child: DrumKitView(),
        ),
      );

  }
}




