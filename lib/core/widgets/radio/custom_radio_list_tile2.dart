import 'package:bud/core/helper/extensions.dart';
import 'package:flutter/material.dart';

import '../../resources/colors/color.dart';
import '../texts/black_texts.dart';

class CustomRadioListTile2 extends StatelessWidget {
  final String title;
  final String value;
  final String groupValue;
  final Function(String?) onChanged;
  const CustomRadioListTile2(
      {Key? key,
      required this.title,
      required this.value,
      required this.groupValue,
      required this.onChanged})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Row(
      children: [
        Radio(
          activeColor: theme.colorScheme.secondary,
          value: value,
          groupValue: groupValue,
          fillColor: MaterialStateProperty.all(primaryColor),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: VisualDensity(horizontal: -4, vertical: -4),
          onChanged: onChanged,
        ),
        8.width,
        BlackMediumText(
          label: title,
          fontSize: 13,
          labelColor: const Color(0xff09101D),
        )
      ],
    );
  }
}
