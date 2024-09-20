import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../resources/colors/color.dart';
import '../../resources/styles/styles.dart';
import '../../themes/colors.dart';

class CustomSwitch extends StatelessWidget {
  final void Function(bool) onToggle;

  final bool value;
  final String? title;
  final TextStyle? style;

  CustomSwitch(
      {Key? key,
      required this.onToggle,
      this.value = false,
      this.title,
      this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isActive = value;
    ThemeData theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (title != null) ...[
          Text(
            title ?? '',
            style: style ?? TextStyles.font18Black700Weight
          ),
        ],
        StatefulBuilder(builder: (context, setState) {
          return CupertinoSwitch(
            value: isActive,
            activeColor: primaryColor,
            // offLabelColor: disabledColor,
            trackColor: greyColor,
            // activeToggleColor: context.backgroundColor,
            // inactiveColor: context.dividerColor,
            // inactiveToggleColor: context.cardColor,
            onChanged: (value) {
              setState(() {
                isActive = value;
              });
              onToggle(isActive);

            },
          );
        }),
      ],
    );
  }
}
