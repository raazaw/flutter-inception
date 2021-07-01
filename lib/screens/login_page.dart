import 'package:flutter/material.dart';
import 'package:flutter_first_app/utilities/myRoutes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = " ";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $name, Please Login!!!",
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
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
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
            InkWell(
              splashColor: Colors.amber,
              onTap: () async {
                setState(() {
                  changeButton = true;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                height: 40,
                width: changeButton ? 60 : 160,
                alignment: Alignment.center,
                child: changeButton
                    ? Icon(
                        Icons.done_rounded,
                        color: Colors.white,
                      )
                    : Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                decoration: BoxDecoration(
                  // shape: changeButton? BoxShape.circle:BoxShape.rectangle ,
                  borderRadius: BorderRadius.circular(changeButton ? 50 : 8.0),
                  color: Colors.teal,
                ),
              ),
            ),

            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.pushNamed(context, MyRoutes.homeRoute);
            //     },
            //     child: Text("LogIn"),
            //     style: TextButton.styleFrom(minimumSize: Size(300, 40))),
          ],
        ),
      ),
    );
  }
}
