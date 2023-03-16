import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {

  final String text;
  final TextStyle? style;
  final double? margin;
  final Color? shadowColor;
  final Color? buttonColor;
  final Color? borderColor;
  final double? width;
  final double? height;
  final VoidCallback? onPressed;
  final Color? textColor;
  final double? fontSize;

  const SquareButton(
      {super.key,
        required this.text,
        this.style,
        this.margin,
        this.width,
        this.shadowColor,
        this.textColor,
        this.buttonColor,
        this.borderColor,
        this.onPressed,
        this.fontSize,
        this.height});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor ?? Colors.blue,
          shape: BoxShape.rectangle,
        ),
        height:height??50,
        width: width ?? MediaQuery.of(context).size.width/1.5,
        margin: EdgeInsets.symmetric(horizontal: margin ?? 10),
        child: Center(
          child:getText()
          ),
      ),
    );
  }


  Widget getText() {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: style ??
          TextStyle(
              fontSize: fontSize??17,
              fontWeight: FontWeight.w700,
              color: textColor ?? Colors.white),
    );
  }
}