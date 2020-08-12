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
      backgroundColor: Colors.grey[300],
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
          SizedBox(height: 60.0),
          CustomRaisedButton(
            btnTitle: 'Sign in with Google',
            btnImage: Image.asset('images/icons8-google-50.png'),
          ),
          SizedBox(height: 12.0),
          CustomRaisedButton(
            btnTitle: 'Sign in with Facebook',
            btnImage: Image.asset('images/icons8-facebook-50.png'),
          ),
          SizedBox(height: 12.0),
          CustomRaisedButton(
            btnTitle: 'Sign in as a guest',
            btnImage: Image.asset('images/icons8-person-50.png'),
          ),
        ],
      ),
    );
  }
}
