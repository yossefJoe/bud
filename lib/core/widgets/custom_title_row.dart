
import 'package:bud/core/helper/extensions.dart';
import 'package:bud/core/widgets/texts/black_texts.dart';
import 'package:bud/core/widgets/texts/primary_texts.dart';
import 'package:flutter/material.dart';

class CustomTitleRow extends StatelessWidget {
   CustomTitleRow({super.key, required this.title, required this.onTap});
 final String title;
 final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: 20.paddingHorizontal,
      child: Row(
        children: [
          Expanded(
            child: BlackBoldText(
              label: title,
              fontSize: 20,
            ),
          ),
          InkWell(
            onTap:onTap,
            child:
            PrimaryBoldText(
              label:'see all',
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
