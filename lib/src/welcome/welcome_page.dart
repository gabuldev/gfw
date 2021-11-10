import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text(
            "SAVE THE DATE",
            style: TextStyle(color: Colors.white, fontSize: 100),
          ),
        ));
  }
}
