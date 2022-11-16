import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class LoadingButton extends StatelessWidget {
  final String buttonText;
  final RoundedLoadingButtonController controller;
  final void Function() goNextScreen;
  const LoadingButton({Key? key,
    required this.buttonText,
    required this.goNextScreen,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedLoadingButton(
      onPressed: goNextScreen,
      controller: controller,
      child: Ink(
        decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [Color(0xff397f3f),Color(0xff397f3f),  Color(0xff397f3f)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,//Color(0xff397f3f)
            ),
            borderRadius: BorderRadius.circular(30.0)
        ),

        child: Container(
          constraints: const BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
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
    );
  }
}