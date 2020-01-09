import 'package:flutter/material.dart';

import 'calculatorKeys.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  num result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Row(
          children: <Widget>[
            Expanded(
              child: Icon(
                Icons.compare_arrows,
                color: Colors.orange,
              ),
            ),
            Expanded(
              child: Icon(
                Icons.add_box,
                color: Colors.orange,
              ),
            ),
            Expanded(
              child: Icon(
                Icons.gamepad,
                color: Colors.orange,
              ),
            ),
            Expanded(
              child: Icon(
                Icons.account_balance,
                color: Colors.orange,
              ),
            ),
            Expanded(
              child: Icon(
                Icons.more_vert,
                color: Colors.orange,
              ),
            )
          ],
        ),
        backgroundColor: Colors.white24,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 300.0,
              width: MediaQuery.of(context).size.width,
              child: Text(
                result.toString(),
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.black,
                ),
              ),
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
                  CalculatorBlackTextKey(
                    val: '7',
                    onNumButtonTap: (String v) {
                      setState(() {
                        result = num.parse(result.toString() + v);
                      });
                      print(result);
                    },
                  ),
                  CalculatorBlackTextKey(
                    val: '8',
                    onNumButtonTap: (String v) {
                      setState(() {
                        result = num.parse(result.toString() + v);
                      });
                      print(result);
                    },
                  ),
                  CalculatorBlackTextKey(
                    val: '9',
                    onNumButtonTap: (String v) {
                      setState(() {
                        result = num.parse(result.toString() + v);
                      });
                      print(result);
                    },
                  ),
                  CalculatorOrangeTextKey('*'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalculatorBlackTextKey(
                    val: '4',
                    onNumButtonTap: (String v) {
                      setState(() {
                        result = num.parse(result.toString() + v);
                      });
                      print(result);
                    },
                  ),
                  CalculatorBlackTextKey(
                    val: '5',
                    onNumButtonTap: (String v) {
                      setState(() {
                        result = num.parse(result.toString() + v);
                      });
                      print(result);
                    },
                  ),
                  CalculatorBlackTextKey(
                    val: '6',
                    onNumButtonTap: (String v) {
                      setState(() {
                        result = num.parse(result.toString() + v);
                      });
                      print(result);
                    },
                  ),
                  CalculatorOrangeTextKey('-'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalculatorBlackTextKey(
                    val: '1',
                    onNumButtonTap: (String v) {
                      setState(() {
                        result = num.parse(result.toString() + v);
                      });
                      print(result);
                    },
                  ),
                  CalculatorBlackTextKey(
                    val: '2',
                    onNumButtonTap: (String v) {
                      setState(() {
                        result = num.parse(result.toString() + v);
                      });
                      print(result);
                    },
                  ),
                  CalculatorBlackTextKey(
                    val: '3',
                    onNumButtonTap: (String v) {
                      setState(() {
                        result = num.parse(result.toString() + v);
                      });
                      print(result);
                    },
                  ),
                  CalculatorOrangeTextKey('+'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalculatorOrangeIconKey(Icons.loop),
                  CalculatorBlackTextKey(
                    val: '0',
                    onNumButtonTap: (String v) {
                      setState(() {
                        result = num.parse(result.toString() + v);
                      });
                      print(result);
                    },
                  ),
                  CalculatorBlackTextKey(
                    val: '.',
                    onNumButtonTap: (String v) {
                      setState(() {
                        result = num.parse(result.toString() + v);
                      });
                      print(result);
                    },
                  ),
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

//function(setState(){}) main.dart
//calculatorKeys.dart-> calculation blacktextkey  button.dart()
//
