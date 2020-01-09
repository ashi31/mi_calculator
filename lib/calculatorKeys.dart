import 'package:flutter/material.dart';

class CalculatorBlackTextKey extends StatelessWidget {
  final String val;
  final Function(String) onNumButtonTap;
  CalculatorBlackTextKey({this.val, this.onNumButtonTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => onNumButtonTap(val),
        child: Container(
//      color: Colors.black,
          child: Center(
            child: Text(
              val,
              style: TextStyle(fontSize: 30.0),
            ),
          ),
        ),
      ),
    );
  }
}

class CalculatorOrangeTextKey extends StatelessWidget {
  final String t;

  CalculatorOrangeTextKey(this.t);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        child: Container(
//      color: Colors.black,
          child: Center(
            child: Text(
              t,
              style: TextStyle(color: Colors.orange, fontSize: 30.0),
            ),
          ),
        ),
      ),
    );
  }
}

class CalculatorOrangeIconKey extends StatelessWidget {
  final IconData t;

  CalculatorOrangeIconKey(this.t);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        child: Container(
//                        color: Colors.black,
          child: Center(
              child: Icon(
            t,
            color: Colors.orange,
          )),
        ),
      ),
    );
  }
}
