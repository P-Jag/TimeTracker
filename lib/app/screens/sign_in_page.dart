import 'package:flutter/material.dart';
import 'dart:async';
import 'package:time_tracker/app/common_widgets/custom_raised_button.dart';
import 'package:time_tracker/app/screens/email_sign_in_page.dart';
import 'package:time_tracker/app/services/auth.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {
  Future<void> _signInWithGoogle(BuildContext context) async {
    try {
      final auth = Provider.of<AuthBase>(context, listen: false);
      await auth.signInWithGoogle();
    } catch (e) {
      print(e.toString());
    }
  }

  void _signInWithEmail(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context) => EmailSignInPage(),
      ),
    );
  }

  Future<void> _signInAnonymously(BuildContext context) async {
    try {
      final auth = Provider.of<AuthBase>(context, listen: false);
      await auth.signInAnonymously();
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
      body: _buildContent(context),
      backgroundColor: Colors.grey[300],
    );
  }

  Widget _buildContent(BuildContext context) {
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
            onPressed: () => _signInWithGoogle(context),
          ),
          SizedBox(height: 12.0),
          CustomRaisedButton(
            btnTitle: 'Sign in with email',
            btnImage: Image.asset('images/icons8-mailbox-50.png'),
            onPressed: () => _signInWithEmail(context),
          ),
          SizedBox(height: 12.0),
          CustomRaisedButton(
            btnTitle: 'Sign in as guest',
            btnImage: Image.asset('images/icons8-person-50.png'),
            onPressed: () => _signInAnonymously(context),
          ),
        ],
      ),
    );
  }
}
