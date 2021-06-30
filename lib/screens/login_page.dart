import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          """Raj, Please Login my brother""",
          style: TextStyle(
            color: Colors.teal.shade300,
            fontSize: 22.0,
            fontWeight: FontWeight.w600,
          ),
          // textScaleFactor: 2.0,
        ),
      ),
    );
  }
}
