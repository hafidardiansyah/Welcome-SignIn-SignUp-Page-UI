import 'package:example/components/alreadyHaveAnAccountCheck.dart';
import 'package:example/components/orDivider.dart';
import 'package:example/components/roundedButton.dart';
import 'package:example/components/roundedInputField.dart';
import 'package:example/components/roundedPasswordField.dart';
import 'package:example/components/socialIcon.dart';

import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

import 'package:example/screens/signInScreen.dart';
import 'package:example/utilities/constants.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
            height: size.height,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: size.height * 0.05),
                  Text("SIGN UP",
                      style: TextStyle(
                          color: blackColor,
                          fontFamily: "Poppins",
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: size.height * 0.03),
                  SvgPicture.asset(
                    "assets/images/login.svg",
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
                    text: "SIGN UP",
                  ),
                  SizedBox(height: size.height * 0.03),
                  AlreadyHaveAnAccountCheck(
                    login: false,
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
