import '../../resources/colors/color.dart';
import '../texts/black_texts.dart';
import 'package:flutter/cupertino.dart';


class TextSwitch extends StatelessWidget {
  final String text;
  final double? fontSize;
  final bool? value;
  final void Function(bool) onToggle;

  TextSwitch({super.key, required this.text, this.fontSize, required this.onToggle, this.value=false});

  @override
  Widget build(BuildContext context) {
    bool isActive = value!;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlackSemiBoldText(
          label: text,
          fontSize:fontSize??14 ,
        ),
        CupertinoSwitch(
          value: isActive,
          activeColor: primaryColor,
          trackColor: greyColor,
          onChanged: (value) {
            isActive = value;
            onToggle(isActive);

          },
        )
      ],
    );
  }
}
