


import 'package:bud/core/helper/extensions.dart';
import 'package:bud/core/widgets/texts/black_texts.dart';
import 'package:bud/core/widgets/texts/hint_texts.dart';
import 'package:flutter/cupertino.dart';

import 'buttons/app_icon.dart';
import 'buttons/primary_button.dart';

class CustomEmptyWidget extends StatelessWidget {
  CustomEmptyWidget( {Key? key,required this.image, this.titleButton,this.onPressed, this.hasButton,required this.text, required this.title,}) : super(key: key);
  final String image;
  final String title;
  final String text;
  final String? titleButton;
  final bool? hasButton;
  dynamic Function()? onPressed;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Padding(
        padding: 20.paddingHorizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: AppIcon(
                icon: image,
                size: 50,
              ),
            ),
            30.height,
            BlackBoldText(
              fontSize: 20,
              textAlign: TextAlign.center,
              label: title,
            ),
            8.height,
            Padding(
              padding:10.paddingHorizontal,
              child: HintMediumText(
                label: text,
                fontSize: 14,
                textAlign: TextAlign.center,
              ),
            ),
            hasButton==true?
            Padding(
              padding: 70.paddingTop,
              child: PrimaryButton(
                height: 54,
                title: titleButton??'Not found data',
                margin: 30.paddingVert+10.paddingHorizontal,
                onPressed: onPressed,
              ),
            ):const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
