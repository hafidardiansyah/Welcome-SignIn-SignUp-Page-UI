import 'package:example/components/alreadyHaveAnAccountCheck.dart';
import 'package:example/components/orDivider.dart';
import 'package:example/components/roundedButton.dart';
import 'package:example/components/roundedInputField.dart';
import 'package:example/components/roundedPasswordField.dart';
import 'package:example/components/socialIcon.dart';
import 'package:example/screens/login/loginScreen.dart';
import 'package:example/utilities/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // Positioned(
          //   top: 0,
          //   left: 0,
          //   child: Image.asset(
          //     "assets/images/signup_top.png",
          //     width: size.width * 0.35,
          //   ),
          // ),
          // Positioned(
          //   bottom: 0,
          //   left: 0,
          //   child: Image.asset(
          //     "assets/images/main_bottom.png",
          //     width: size.width * 0.25,
          //   ),
          // ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("SIGNUP",
                    style: TextStyle(
                        color: blackColor,
                        fontFamily: "Poppins",
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: size.height * 0.03),
                SvgPicture.asset(
                  "assets/icons/teacher.svg",
                  width: size.width * 0.9,
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
                SizedBox(height: size.height * 0.03),
                RoundedButton(
                  press: () {},
                  text: "SIGNUP",
                ),
                SizedBox(height: size.height * 0.03),
                AlreadyHaveAnAccountCheck(
                  login: false,
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
                OrDivider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SocialIcon(
                      icon: "assets/icons/facebook.svg",
                      press: () {},
                    ),
                    SocialIcon(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                    SocialIcon(
                      icon: "assets/icons/google-plus.svg",
                      press: () {},
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
