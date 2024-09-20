import 'package:bud/core/helper/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

import '../../resources/colors/color.dart';
import '../texts/hint_texts.dart';
import '../texts/primary_texts.dart';
class SwipeButtonWidget extends StatelessWidget {
  final String text;
  final Widget? icon;
  final Color? backgroundColor;
 final Future<bool?> Function() action;
   SwipeButtonWidget({super.key, required this.text, this.backgroundColor, this.icon, required this.action, });

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: 20.paddingHorizontal,
        child: Center(
          child:
         Directionality(
          textDirection: TextDirection.ltr,
          child:  SliderButton(
              radius: 16,
              width: double.infinity,
              backgroundColor: backgroundColor??primaryColor,
              action: action,
              baseColor: Colors.white,
              buttonSize: 50,
              highlightedColor: Colors.black45,
              alignLabel: Alignment.center,
              label: HintMediumText(
                label:text,
                fontSize: 16,
                labelColor: Colors.white,
              ),
              icon: icon ?? Icon(Icons.arrow_forward, color:backgroundColor ,size: 40,)

          ),
      )));

  }
}
