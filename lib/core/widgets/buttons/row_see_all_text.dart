import 'package:bud/core/helper/extensions.dart';
import 'package:flutter/material.dart';
import '../texts/black_texts.dart';
import '../texts/primary_texts.dart';

///  Created by harby on 9/5/2023.
class RowSeeAllText extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final String routeName;
  final dynamic arguments;

  const RowSeeAllText({
    super.key,
    required this.title,
    this.onTap,
    required this.routeName, this.arguments,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: (20.paddingHorizontal) + (10.paddingTop),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         BlackBoldText(label: title, fontSize: 14,),
          GestureDetector(
            onTap: onTap ??
                () {
              context.pushNamed(routeName,arguments:arguments );
                },
            child:
              PrimaryBoldText(
                label:'See All',
                fontSize: 14,)
          ),
        ],
      ),
    );
  }
}
