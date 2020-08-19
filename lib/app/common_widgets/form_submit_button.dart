import 'package:flutter/material.dart';

class FormSubmitButton extends StatelessWidget {
  FormSubmitButton({this.onPressed, this.title});
  final Function onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.0,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(4.0),
          ),
        ),
        elevation: 5.0,
        color: Colors.deepPurple[300],
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
