import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  Color? backgroundColor;
  Color? foregroundColor;
  Widget? buttonType;
  Text? text;
  VoidCallback? onPressed;
  
  Button({
    this.backgroundColor = const Color.fromARGB(255, 3, 128, 231),
    this.foregroundColor = Colors.white,
    this.buttonType,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            side: const BorderSide(color: Colors.blue)),
        child: text,
      ),
    );
  }
}

// ignore: must_be_immutable
class Tirkelu extends StatelessWidget {
  Text? label;
  String? hintText;
  Icon? suffixIcon;
  EdgeInsetsGeometry paddingNum;

  Tirkelu(
      {required this.label,
      required this.hintText,
      this.suffixIcon,
      this.paddingNum = const EdgeInsets.symmetric(horizontal: 50)
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingNum,
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please return again";
          }
          return null;
        },
        decoration: InputDecoration(
            suffixIcon: suffixIcon,
            label: label,
            hintText: hintText,
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black12),
              borderRadius: BorderRadius.circular(10),
            )),
      ),
    );
  }
}
