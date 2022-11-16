import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class ButtonInsideApp extends StatelessWidget {
  final String buttonText;
  final RoundedLoadingButtonController controller;
  final void Function() goNextScreen;
  const ButtonInsideApp({Key? key,
    required this.buttonText,
    required this.goNextScreen,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: RoundedLoadingButton(
        onPressed: goNextScreen,
        controller: controller,
        color: Color(0xff397f3f),

        child: Ink(
          decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [Color(0xff397f3f),Color(0xff397f3f),  Color(0xff397f3f)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,//Color(0xff397f3f)
              ),
              borderRadius: BorderRadius.circular(30.0)
          ),

          child: Container(
            constraints: const BoxConstraints(maxWidth: 200.0, minHeight: 40.0),
            alignment: Alignment.center,
            child: Text(
              buttonText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    );
  }
}