import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomImageSvg extends StatelessWidget {
  const CustomImageSvg({super.key, required this.image,  this.radius, this.fit, this.width, this.height, this.color,});
  final String image;
  final double? radius;
  final double? width;
  final double? height;
  final Color? color;
  final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius??0),
        child: SvgPicture.asset(
          image,
          color:color ,
          fit:fit?? BoxFit.cover,
        ),
      ),
    );
  }
}
