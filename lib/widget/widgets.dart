import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:figma_prototype/constants.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.bgColor,
    required this.label,
    required this.labelColor,
    this.onPress,
    this.buttonSize,
    this.hasCustomSize = true,
  }) : super(key: key);

  final Color bgColor;
  final String label;
  final Color labelColor;

  final void Function()? onPress;
  final Size? buttonSize;

  final bool hasCustomSize;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      child: Text(
        label,
        style: TextStyle(
            fontSize: 13.sp, fontWeight: FontWeight.w900, color: labelColor),
      ),
      style: TextButton.styleFrom(
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: COLOR_BLACK),
            borderRadius: BorderRadius.circular(6.r)),
        minimumSize: !hasCustomSize ? Size(167.w, 52.h) : buttonSize,
        fixedSize: !hasCustomSize ? Size(167.w, 52.h) : buttonSize,
      ),
    );
  }
}
