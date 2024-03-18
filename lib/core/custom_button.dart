// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:second/core/constants.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton(
      {Key? key, this.text, this.height, this.width, this.fontsize, this.onTap})
      : super(key: key);
  final String? text;
  final double? height;
  final double? width;
  final double? fontsize;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height!,
      width: width!,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
          color: KMainColor, borderRadius: BorderRadius.circular(20)),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 8),
        onPressed: onTap,
        child: Text(
          text!,
          style: TextStyle(
              fontSize: fontsize!,
              color: Colors.white,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
