import 'package:flutter/material.dart';

import 'app_icon_button.dart';

class RowButtonsIcon extends StatelessWidget {
  final String? title1;
  final String? title2;
  final String icon1;
  final String icon2;
  final Function()? onPressed1;
  final Function()? onPressed2;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final Color? backgroundColor2;
  final double? iconSize;
  const RowButtonsIcon({Key? key,required this.icon1,required this.icon2, this.iconSize,this.title1, this.title2, this.onPressed1, this.onPressed2, this.margin, this.padding, this.height, this.backgroundColor2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: Row(
        children: [
          if(onPressed1 != null)
            Expanded(
              child: AppIconButton(
                icon: icon1,
                onPressed: onPressed1,
                color: backgroundColor2 ?? theme.colorScheme.errorContainer,
                size: iconSize,
              ),
            ),
          if(onPressed2 != null)
            Expanded(
              child:  AppIconButton(
                icon: icon2,
                onPressed: onPressed2,
                color: backgroundColor2 ?? theme.colorScheme.errorContainer,
                size: iconSize,
              ),
            ),
        ],
      ),
    );
  }
}
