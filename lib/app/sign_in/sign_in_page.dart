import 'package:flutter/material.dart';
import 'package:time_tracker/app/common_widgets/custom_raised_button.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
        elevation: 5.0,
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Sign in',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 50.0),
          CustomRaisedButton(
            buttonTitle: 'Sign in with Google',
            buttonColor: Colors.white,
          ),
          SizedBox(height: 10.0),
          CustomRaisedButton(
            buttonTitle: 'Sign in with Facebook',
            buttonColor: Color(0xFF334D92),
            textColor: Colors.white,
          ),
          SizedBox(height: 10.0),
          CustomRaisedButton(
            buttonTitle: 'Sign in as guest',
            buttonColor: Colors.green[500],
          ),
        ],
      ),
    );
  }
}
