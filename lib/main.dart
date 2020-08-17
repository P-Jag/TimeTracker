import 'package:flutter/material.dart';
import 'package:time_tracker/app/screens/landing_page.dart';
import 'app/services/auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Tracker',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: LandingPage(
        auth: Auth(),
      ),
    );
  }
}
