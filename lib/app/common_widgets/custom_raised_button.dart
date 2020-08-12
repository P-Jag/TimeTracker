import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  CustomRaisedButton({
    this.buttonTitle,
    this.buttonColor,
    this.height: 50.0,
    this.textColor: Colors.black87,
  });

  final String buttonTitle;
  final Color buttonColor;
  final double height;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: RaisedButton(
        elevation: 5.0,
        child: Text(
          buttonTitle,
          style: TextStyle(
            color: textColor,
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        color: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
