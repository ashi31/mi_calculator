import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.orange,
      ),
    );

    return MaterialApp(
      title: "Calculator_Simple",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
