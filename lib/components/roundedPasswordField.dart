import 'package:example/components/textFieldContainer.dart';
import 'package:flutter/material.dart';
import 'package:example/utilities/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({Key key, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: whiteColor,
        style: TextStyle(color: whiteColor),
        decoration: InputDecoration(
            icon: Icon(
              Icons.lock,
              color: whiteColor,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: whiteColor,
            ),
            fillColor: whiteColor,
            hintText: "Your Password",
            hintStyle: TextStyle(color: whiteColor, fontFamily: "Poppins"),
            border: InputBorder.none),
      ),
    );
  }
}
