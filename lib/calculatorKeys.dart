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
  final String val;
  final Function(String) onActionButtonTap;

  CalculatorOrangeTextKey({this.val, this.onActionButtonTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => onActionButtonTap(val),
        child: Container(
//      color: Colors.black,
          child: Center(
            child: Text(
              val,
              style: TextStyle(color: Colors.orange, fontSize: 30.0),
            ),
          ),
        ),
      ),
    );
  }
}

class CalculatorOrangeIconKey extends StatelessWidget {
  final IconData val;
  final Function() onActionButtonTap;

  CalculatorOrangeIconKey({this.val, this.onActionButtonTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => onActionButtonTap(),
        child: Container(
//                        color: Colors.black,
          child: Center(
              child: Icon(
            val,
            color: Colors.orange,
          )),
        ),
      ),
    );
  }
}
