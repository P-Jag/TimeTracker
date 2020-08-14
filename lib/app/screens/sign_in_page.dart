import 'package:flutter/material.dart';
import 'package:time_tracker/app/common_widgets/custom_raised_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInPage extends StatelessWidget {
  SignInPage({this.onSignIn});
  final Function(FirebaseUser) onSignIn;

  Future<void> _signInAnonymously() async {
    try {
      final authResult = await FirebaseAuth.instance.signInAnonymously();
      onSignIn(authResult.user);
    } catch (e) {
      print(e.toString());
    }
  }

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
              fontSize: 44.0,
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
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
            btnTitle: 'Sign in with email',
            btnImage: Image.asset('images/icons8-mailbox-50.png'),
          ),
          SizedBox(height: 12.0),
          CustomRaisedButton(
            btnTitle: 'Sign in as guest',
            btnImage: Image.asset('images/icons8-person-50.png'),
            onPressed: _signInAnonymously,
          ),
        ],
      ),
    );
  }
}
