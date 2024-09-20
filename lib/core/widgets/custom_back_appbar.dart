import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomBackAppBar extends StatelessWidget {
   CustomBackAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Icon(Icons.arrow_back,color: Colors.black,)
      // IconText(
      //   iconData: Icons.arrow_back_ios_new_rounded,
      //   isIconData: true,
      //   iconColor: context.hintColor,
      //   text: context.strings.back,
      //   sizedBoxWidth: 0,
      //   iconSize: 20,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   textStyle: context.displayLarge.copyWith(
      //     fontSize: 16,
      //   ),
      // ),
    );
  }
}
