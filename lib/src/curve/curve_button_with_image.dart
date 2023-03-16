import 'package:flutter/material.dart';

class CurveButtonWithImage extends StatelessWidget {

  final String text;
  final TextStyle? style;
  final double? margin;
  final Color? shadowColor;
  final Color? buttonColor;
  final Color? borderColor;
  final double? width;
  final double? height;
  final double? widthImage;
  final double? heightImage;
  final double? paddingTopImage;
  final double? paddingBottomImage;
  final double? paddingLeftImage;
  final double? paddingRightImage;
  final VoidCallback? onPressed;
  final Color? textColor;
  final String? assetsImage;
  final double? fontSize;
  final double? borderWidth;
  final double? borderRadius;
  final double? scaleImage;

  const CurveButtonWithImage(
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
        this.widthImage,
        this.heightImage,
        this.paddingTopImage,
        this.paddingBottomImage,
        this.paddingLeftImage,
        this.paddingRightImage,
        this.fontSize,
        this.scaleImage,
        this.borderWidth,
        this.borderRadius,
        required this.assetsImage,
        this.height});

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: paddingLeftImage??10,right: paddingRightImage??10,top: paddingTopImage??0,bottom: paddingBottomImage??0),
              child: Container(
                height: heightImage??30,
                width: widthImage??30,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: ClipOval(child: Image.asset(assetsImage!,scale:scaleImage?? 5,))),
            ),
            getText(),
          ],

      ),)
    );
  }


  Widget getText() {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: style ??
          TextStyle(
              fontSize:fontSize?? 17,
              fontWeight: FontWeight.w700,
              color: textColor ?? Colors.white),
    );
  }
}