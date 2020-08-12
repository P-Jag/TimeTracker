import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  CustomRaisedButton({
    @required this.btnTitle,
    this.height: 60.0,
    this.textColor: Colors.black87,
    @required this.btnImage,
  });

  final String btnTitle;
  final double height;
  final Color textColor;
  final Widget btnImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: RaisedButton(
        elevation: 5.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            btnImage,
            Text(
              btnTitle,
              style: TextStyle(
                color: textColor,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Opacity(
              opacity: 0.0,
              child: btnImage,
            )
          ],
        ),
        color: Colors.white,
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
