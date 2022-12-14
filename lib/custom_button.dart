// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.onTap,
      this.text = "Button",
      this.loading = false,
      this.borderWidth = 0.0,
      this.borderRadius = 0.0,
      this.backGroundColor = Colors.blueAccent,
      this.textColor = Colors.black,
      this.borderColor = Colors.transparent,
      this.loadingColor = Colors.black,
      this.fontSize = 16,
      this.strokeWidth = 2,
      this.fontWeight = FontWeight.normal,
      this.height = 50,
      this.width = 150})
      : super(key: key);

  final bool loading;
  final String text;
  final Function() onTap;
  final Color backGroundColor;
  final Color textColor;
  final Color loadingColor;
  final Color borderColor;
  final double borderWidth;
  final double borderRadius;
  final double height;
  final double width;
  final double fontSize;
  final double strokeWidth;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            border: Border.all(color:borderColor, width: borderWidth),
            borderRadius: BorderRadius.circular(5),
            color: backGroundColor),
        child: Center(
          child: loading
              ? CircularProgressIndicator(
                  strokeWidth: strokeWidth,
                  color: loadingColor,
                )
              : Text(
                  text,
                  style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: fontWeight,
                      color: textColor),
                ),
        ),
      ),
    );
  }
}
