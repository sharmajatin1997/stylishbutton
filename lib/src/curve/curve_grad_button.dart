import 'package:flutter/material.dart';

class CurveGradButton extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final double? margin;
  final Color? shadowColor;
  final Color grad1;
  final Color grad2;
  final Color? borderColor;
  final double? width;
  final double? height;
  final VoidCallback? onPressed;
  final Color? textColor;
  final GradientTransform? transform;
  final double? fontSize;
  final double? borderWidth;
  final double? borderRadius;

  const CurveGradButton(
      {super.key,
      required this.text,
      this.style,
      this.margin,
      this.width,
      this.shadowColor,
      this.textColor,
      required this.grad1,
      required this.grad2,
      this.borderColor,
      this.onPressed,
      this.transform,
      this.fontSize,
      this.borderWidth,
      this.borderRadius,
      this.height});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              transform: transform,
              colors: [
                grad1,
                grad2,
              ]),
          shape: BoxShape.rectangle,
          border: Border.all(
              width: borderWidth??1,
              color: (borderColor ??
                  Colors.transparent)),
          borderRadius: BorderRadius.all(
            Radius.circular(
              borderRadius ?? 25,
            ),
          ),
        ),
        height: height ?? 50,
        width: width ?? MediaQuery.of(context).size.width / 1.5,
        margin: EdgeInsets.symmetric(horizontal: margin ?? 10),
        child: Center(child: getText()),
      ),
    );
  }

  Widget getText() {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: style ??
          TextStyle(
              fontSize: fontSize ?? 17,
              fontWeight: FontWeight.w700,
              color: textColor ?? Colors.white),
    );
  }
}
