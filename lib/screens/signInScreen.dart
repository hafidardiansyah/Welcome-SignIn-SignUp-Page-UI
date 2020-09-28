import 'package:example/components/alreadyHaveAnAccountCheck.dart';
import 'package:example/components/roundedButton.dart';
import 'package:example/components/roundedInputField.dart';
import 'package:example/components/roundedPasswordField.dart';
import 'package:example/components/alreadyHaveAnAccountCheck.dart';
import 'package:example/components/orDivider.dart';
import 'package:example/components/socialIcon.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:example/utilities/constants.dart';
import 'package:example/screens/signUpScreen.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: size.height,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: size.height * 0.05),
                  Text("SIGN IN",
                      style: TextStyle(
                          color: blackColor,
                          fontFamily: "Poppins",
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: size.height * 0.03),
                  SvgPicture.asset(
                    "assets/images/signin.svg",
                    width: size.height * 0.35,
                  ),
                  SizedBox(height: size.height * 0.03),
                  RoundedInputField(
                    hintText: "Your Email",
                    icon: Icons.email,
                    onChanged: (value) {},
                  ),
                  RoundedPasswordField(
                    onChanged: (value) {},
                  ),
                  RoundedButton(
                    press: () {},
                    text: "SIGN IN",
                  ),
                  SizedBox(height: size.height * 0.03),
                  AlreadyHaveAnAccountCheck(
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
                  OrDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SocialIcon(
                        icon: "assets/icons/google.svg",
                        press: () {},
                      ),
                    ],
                  )
                ],
              ),
            )));
  }
}
