import 'package:example/screens/signupScreen.dart';
import 'package:flutter/material.dart';
import 'package:example/components/roundedButton.dart';
import 'package:example/screens/loginScreen.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "WELCOME",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.05),
          SvgPicture.asset(
            "assets/icons/teacher.svg",
            height: size.height * 0.45,
          ),
          SizedBox(height: size.height * 0.05),
          RoundedButton(
            text: "LOGIN",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
          ),
          RoundedButton(
            text: "SIGN UP",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignupScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    ));
  }
}
