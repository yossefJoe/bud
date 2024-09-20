

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_icon_button.dart';

class AppCircularIconButton extends StatelessWidget {
  final String icon;
  final VoidCallback? onPressed;
  final double? size;
  final Color? color;
  final double? radius;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  const AppCircularIconButton({Key? key, required this.icon, this.onPressed, this.size, this.color, this.radius, this.backgroundColor, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.all(0),
      child: CircleAvatar(
        radius: radius ?? 20,
        backgroundColor: backgroundColor,
        child: AppIconButton(
          icon: icon,
          color: color,
          size: size ?? 22,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
