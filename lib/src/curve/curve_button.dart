import 'package:flutter/material.dart';

class CurveButton extends StatelessWidget {

  final String text;
  final TextStyle? style;
  final double? margin;
  final Color? buttonColor;
  final double? width;
  final double? height;
  final VoidCallback? onPressed;
  final Color? textColor;
  final double? fontSize;
  final double? borderWidth;
  final double? borderRadius;
  final Color? borderColor;

  const CurveButton(
      {super.key,
        required this.text,
        this.style,
        this.margin,
        this.width,
        this.textColor,
        this.buttonColor,
        this.borderColor,
        this.onPressed,
        this.fontSize,
        this.borderWidth,
        this.borderRadius, this.height});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor ?? Colors.blue,
          shape: BoxShape.rectangle,
          border: Border.all(
              width: borderWidth??1,
              color: (borderColor ??
                  buttonColor ??
                  Colors.blue.withOpacity(0.8))),
          borderRadius: BorderRadius.all(
            Radius.circular(
              borderRadius ?? 25,
            ),
          ),
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