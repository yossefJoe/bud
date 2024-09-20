import 'package:flutter/cupertino.dart';

import '../themes/colors.dart';


class CustomDot extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? color;
  const CustomDot({super.key, this.width, this.height, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:width?? 5.0,
      height:height?? 5.0,
      decoration:  BoxDecoration(
        color: color??AppColors.greyColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
