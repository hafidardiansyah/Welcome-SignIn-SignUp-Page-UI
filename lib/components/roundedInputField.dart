import 'package:example/components/textFieldContainer.dart';
import 'package:flutter/material.dart';
import 'package:example/utilities/constants.dart';

class RoundedInputField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final ValueChanged<String> onChanged;

  const RoundedInputField({Key key, this.icon, this.hintText, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: whiteColor,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: whiteColor,
            ),
            hintText: hintText,
            hintStyle: TextStyle(color: whiteColor, fontFamily: "Poppins"),
            border: InputBorder.none),
      ),
    );
  }
}
