import 'package:flutter/material.dart';

import 'calculatorKeys.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 350.0,
            ),
            Divider(
              height: 2.0,
              color: Colors.grey[400],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalculatorOrangeTextKey('C'),
                  CalculatorOrangeIconKey(Icons.backspace),
                  CalculatorOrangeTextKey('%'),
                  CalculatorOrangeTextKey('/'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalculatorBlackTextKey('7'),
                  CalculatorBlackTextKey('8'),
                  CalculatorBlackTextKey('9'),
                  CalculatorOrangeTextKey('*'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalculatorBlackTextKey('4'),
                  CalculatorBlackTextKey('5'),
                  CalculatorBlackTextKey('6'),
                  CalculatorOrangeTextKey('-'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalculatorBlackTextKey('1'),
                  CalculatorBlackTextKey('2'),
                  CalculatorBlackTextKey('3'),
                  CalculatorOrangeTextKey('+'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalculatorOrangeIconKey(Icons.loop),
                  CalculatorBlackTextKey('0'),
                  CalculatorBlackTextKey('.'),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      splashColor: Colors.transparent,
                      child: Container(
//                        color: Colors.black,
                        child: Center(
                          child: CircleAvatar(
                            backgroundColor: Colors.orange,
                            radius: 30.0,
                            child: Text(
                              '=',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 40.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
