import 'package:flutter/material.dart';
import 'components/roundedButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Example"),
        ),
        body: Align(
            alignment: Alignment(0, 0.9),
            child: RoundedButton(
              press: () {},
              text: "Selamat Datang",
            )),
      ),
    );
  }
}
