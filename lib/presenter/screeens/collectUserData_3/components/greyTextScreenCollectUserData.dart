import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GreyTextScreenCollectUserData extends StatelessWidget {
  final String text;
  const GreyTextScreenCollectUserData({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
        color: Colors.grey,
        fontSize: 18,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold
    ), );
  }
}
