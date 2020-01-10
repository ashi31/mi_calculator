import 'package:flutter/material.dart';

import 'calculatorKeys.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  num result = 0;
  String zeroCount = '';
  int decCount = 0;
  String valueDisplayed = '0';
  bool start = false;

  void displayNum(String v) {
    setState(() {
      if (result.toString().contains('.')) {
        valueDisplayed = valueDisplayed + v;
      } else if (start == true) {
        valueDisplayed = result.toString() + v;
      } else {
        start = true;
        valueDisplayed = v;
      }
      result = num.parse(valueDisplayed);
    });
  }

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
//                result.toString(),
                valueDisplayed,
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
                  CalculatorOrangeTextKey(
                    val: 'C',
                    onActionButtonTap: (v) {
                      setState(() {
                        valueDisplayed = '0';
                        result = 0;
                        start = false;
                      });
                      print(result);
                    },
                  ),
                  CalculatorOrangeIconKey(
                    val: Icons.backspace,
                    onActionButtonTap: () {
                      setState(() {
                        valueDisplayed = valueDisplayed.substring(
                            0, valueDisplayed.length - 1);
                        result = num.parse(valueDisplayed);
                      });
                      print(result);
                    },
                  ),
//                  CalculatorOrangeTextKey('%'),
//                  CalculatorOrangeTextKey('/'),
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
                      displayNum(v);
                      print(result);
                    },
                  ),
                  CalculatorBlackTextKey(
                    val: '8',
                    onNumButtonTap: (String v) {
                      displayNum(v);
                      print(result);
                    },
                  ),
                  CalculatorBlackTextKey(
                    val: '9',
                    onNumButtonTap: (String v) {
                      displayNum(v);
                      print(result);
                    },
                  ),
//                  CalculatorOrangeTextKey('*'),
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
                      displayNum(v);
                      print(result);
                    },
                  ),
                  CalculatorBlackTextKey(
                    val: '5',
                    onNumButtonTap: (String v) {
                      displayNum(v);
                      print(result);
                    },
                  ),
                  CalculatorBlackTextKey(
                    val: '6',
                    onNumButtonTap: (String v) {
                      displayNum(v);
                      print(result);
                    },
                  ),
//                  CalculatorOrangeTextKey('-'),
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
                      displayNum(v);
                      print(result);
                    },
                  ),
                  CalculatorBlackTextKey(
                    val: '2',
                    onNumButtonTap: (String v) {
                      displayNum(v);
                      print(result);
                    },
                  ),
                  CalculatorBlackTextKey(
                    val: '3',
                    onNumButtonTap: (String v) {
                      displayNum(v);
                      print(result);
                    },
                  ),
//                  CalculatorOrangeTextKey('+'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
//                  CalculatorOrangeIconKey(Icons.loop),
                  CalculatorBlackTextKey(
                    val: '0',
                    onNumButtonTap: (String v) {
                      setState(() {
                        if (result == 0) {
                          valueDisplayed = '0';
                        } else if (result.toString().contains('.')) {
                          valueDisplayed = valueDisplayed + v;
                        } else {
                          valueDisplayed = result.toString() + v;
                          result = num.parse(result.toString() + v);
                        }
                      });
                      print(result);
                    },
                  ),
                  CalculatorBlackTextKey(
                      val: '.',
                      onNumButtonTap: (String v) {
                        if (decCount == 0) {
                          decCount++;
                          setState(() {
                            valueDisplayed = result.toString() + v;
                            result = num.parse(result.toString() + v);
                          });
                          print(result);
                        }
                      }),
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
