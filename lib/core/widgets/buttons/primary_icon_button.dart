import 'package:flutter/material.dart';

import '../../resources/images/app_icons.dart';
import '../../decorations/decorations.dart';
import '../../themes/colors.dart';
import 'app_icon.dart';

class PrimaryIconButton extends StatelessWidget {
  final String? title;
  final TextStyle? titleStyle;
  final Function()? onPressed;
  final double? height;
  final double? fontSize;
  final Color? backgroundColor;
  final double? borderRadius;
  final String icon;
  final Color? iconColor;
  final Decoration? decoration;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  const PrimaryIconButton(
      {Key? key,
      this.title,
        this.fontSize,
      this.onPressed,
      this.height,
      this.backgroundColor,
      this.borderRadius,
      required this.icon,
      this.iconColor,
      this.titleStyle,
      this.decoration,
      this.margin,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      height: height,
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      margin: margin,
      decoration: decoration ??
          Decorations.kDecorationOnlyRadius(
              color: backgroundColor ?? theme.primaryColor, radius:borderRadius?? 8),
      child: InkWell(
        onTap: onPressed,
        radius: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppIcon(
                icon: icon, color: iconColor ?? AppColors.cardColor, size: 25),
            // 17.pw,
            Text(
              title!,
              style: titleStyle
            ),
          ],
        ),
      ),
    );
  }
}
