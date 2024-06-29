import 'package:flutter/material.dart';
import 'package:hcc/core/util/app_colors.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    required this.text,
    required this.width,
    this.backgroundColor,
    this.textColor,
    this.borderSideColor,
    this.onPressed,
  });

  final String text;
  final double? width;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderSideColor;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
              color: borderSideColor ?? Colors.transparent,
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
