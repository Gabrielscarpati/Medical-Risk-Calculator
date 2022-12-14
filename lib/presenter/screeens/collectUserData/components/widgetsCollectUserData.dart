import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HeightController extends StatelessWidget {
  final TextEditingController nameController;
  final String hint;
  const HeightController({Key? key, required this.nameController, required this.hint}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 0),
      child: SizedBox(
        height: 36,
        width: 130,
        child: Material(
          elevation: 8,
          shadowColor: Colors.black87,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(12),

          child: TextField(
            keyboardType: TextInputType. number,
            inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
            ],
            textAlignVertical: TextAlignVertical.bottom,
            controller: nameController,
            cursorColor: Colors.indigoAccent,

            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: hint,


            ),
          ),
        ),
      ),
    );
  }
}


class WeightController extends StatelessWidget {
  final TextEditingController nameController;
  final String hint;
  const WeightController({Key? key, required this.nameController, required this.hint}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 2),
      child: SizedBox(
        height: 36,
        width: 130,
        child: Material(
          elevation: 8,
          shadowColor: Colors.black87,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          child: TextField(
            keyboardType: TextInputType. number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            textAlignVertical: TextAlignVertical.bottom,
            controller: nameController,
            cursorColor: Colors.indigoAccent,

            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: hint,
            ),
           // keyboardType: TextInputType.emailAddress,
          ),
        ),
      ),
    );
  }
}