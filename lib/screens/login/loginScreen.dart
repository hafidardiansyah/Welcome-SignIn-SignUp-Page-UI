import 'package:example/components/alreadyHaveAnAccountCheck.dart';
import 'package:example/components/roundedButton.dart';
import 'package:example/components/roundedInputField.dart';
import 'package:example/components/roundedPasswordField.dart';
import 'package:example/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Positioned(
          //     top: 0,
          //     left: 0,
          //     child: Image.asset("assets/images/main_top.png"),
          //     width: size.width * 0.35),
          // Positioned(
          //     bottom: 0,
          //     right: 0,
          //     child: Image.asset("assets/images/login_bottom.png"),
          //     width: size.width * 0.4),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("LOGIN",
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
                  text: "LOGIN",
                ),
                SizedBox(height: size.height * 0.03),
                AlreadyHaveAnAccountCheck(
                  press: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
