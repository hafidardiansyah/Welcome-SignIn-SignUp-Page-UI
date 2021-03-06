import 'package:example/components/roundedButton.dart';

import 'package:example/screens/signUpScreen.dart';
import 'package:example/screens/signInScreen.dart';
import 'package:example/utilities/constants.dart';

import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(alignment: Alignment.center, children: [
      Positioned(
          top: 0,
          left: 0,
          child: Image.asset("assets/images/vectopleft.png",
              width: size.width * 0.35)),
      Positioned(
          bottom: 0,
          right: 0,
          child: Image.asset("assets/images/vecbottomright.png",
              width: size.width * 0.35)),
      Container(
        height: size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: size.height * 0.2),
              Text("WELCOME",
                  style: TextStyle(
                      color: blackColor,
                      fontFamily: "Poppins",
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: size.height * 0.05),
              SvgPicture.asset(
                "assets/images/welcome.svg",
                height: size.width * 0.5,
              ),
              SizedBox(height: size.height * 0.05),
              RoundedButton(
                text: "SIGN IN",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignInScreen();
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
                        return SignUpScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    ]));
  }
}
