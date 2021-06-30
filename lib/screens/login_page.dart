import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login_image.png",
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Welcome Raj, Please Login!",
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 24.0, horizontal: 36.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "enter username", labelText: "UserName"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "enter Password", labelText: "Password"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
              child: Text("LogIn"),
              style: ButtonStyle(),
              onPressed: () {
                print("Thank You");
              }),
        ],
      ),
    );
  }
}
