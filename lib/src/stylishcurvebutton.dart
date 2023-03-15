import 'package:flutter/material.dart';

class StylishCurveButton extends StatelessWidget {

  final String text;
  final TextStyle? style;
  final double? margin;
  final double? borderRadius;
  final Color? shadowColor;
  final Color? buttonColor;
  final Color? borderColor;
  final double? blurRadius;
  final double? width;
  final double? height;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;
  final Color? textColor;

  StylishCurveButton(
      {super.key,
        required this.text,
        this.style,
        this.margin,
        this.width,
        this.blurRadius,
        this.shadowColor,
        this.textColor,
        this.buttonColor,
        this.borderColor,
        this.onPressed,
        this.padding,
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
              width: 1,
              color: (borderColor ??
                  buttonColor ??
                  Colors.blue.withOpacity(0.8))),
          borderRadius: BorderRadius.all(
            Radius.circular(
              borderRadius ?? 25,
            ),
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2, // Shadow position
            ),
          ],
        ),
        height:50,
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
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: textColor ?? Colors.white),
    );
  }
}