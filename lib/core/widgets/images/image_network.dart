import 'package:flutter/material.dart';

import '../../decorations/decorations.dart';
import '../../resources/colors/color.dart';
import '../texts/black_texts.dart';

///  Created by harbey on 9/3/2023.
class ImageNetworkCircle extends StatelessWidget {
  final String? image;
  final double? width;
  final double? height;
  final double? size;
  final BoxFit? fit;
  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  const ImageNetworkCircle({super.key, this.image, this.width, this.height, this.fit, this.color, this.size, this.borderRadius, this.margin, this.padding});

  @override
  Widget build(BuildContext context) {
    return ImageNetwork(
      image: image,
      width: width,
      height: height,
      fit: fit,
      color: color,
      size: size,
      borderRadius: borderRadius,
      margin: margin,
      padding: padding,
      radius: 500,
    );
  }
}

class ImageNetwork extends StatelessWidget {
  final String? image;
  final double? width;
  final double? height;
  final double? size;
  final BoxFit? fit;
  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? radius;

  const ImageNetwork({super.key, this.image, this.width, this.height, this.fit, this.color, this.size, this.borderRadius, this.margin, this.padding, this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size ?? height,
      width: size ?? width,
      margin: margin ?? EdgeInsets.zero,
      padding: padding ?? EdgeInsets.zero,
      decoration: BoxDecoration(
        color: color??greyColor,
        borderRadius: borderRadius ?? BorderRadius.circular(radius ?? 8),
      ),
      child: ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.circular(radius ?? 8),
        child: FadeInImage.assetNetwork(
          fit: fit ?? BoxFit.scaleDown,
          placeholder: 'assets/images/loading.gif',
         // placeholderScale: 20,
          placeholderCacheHeight: 5,
          placeholderCacheWidth: 5,
          placeholderFit: BoxFit.contain,
          image: image ?? '',
          width: size ?? height ?? 70,
          height: size ?? width ?? 70,
          imageErrorBuilder: (c, o, s) {
            // print('imageErrorBuilder error  $s ');
            return const Center(
                child: Icon(Icons.image,color: Colors.grey,size: 30,));
          },
        ),
      ),
    );
  }
}
class ImageNetworkStack extends StatelessWidget {
  final String label;
  final double? labelSize;
  final double? top;
  final double? left;
  final double? right;
  final double? bottom;
  final String? image;
  final double? width;
  final double? height;
  final double? size;
  final BoxFit? fit;
  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? radius;

  const ImageNetworkStack({super.key, this.image, this.width, this.height, this.fit, this.color, this.size, this.borderRadius, this.margin, this.padding, this.radius, required this.label, this.labelSize, this.top, this.left, this.right, this.bottom});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size ?? height,
          width: size ?? width,
          margin: margin ?? EdgeInsets.zero,
          padding: padding ?? EdgeInsets.zero,
          decoration: BoxDecoration(
            color: greyColor,
            borderRadius: borderRadius ?? BorderRadius.circular(radius ?? 8),
          ),
          child: ClipRRect(
            borderRadius: borderRadius ?? BorderRadius.circular(radius ?? 8),
            child: FadeInImage.assetNetwork(
              fit: fit ?? BoxFit.fill,
              placeholder: 'assets/images/loading.gif',
              // placeholderScale: 20,
              placeholderCacheHeight: 5,
              placeholderCacheWidth: 5,
              placeholderFit: BoxFit.contain,
              image: image ?? '',
              width: size ?? height ?? 70,
              height: size ?? width ?? 70,
              imageErrorBuilder: (c, o, s) {
                // print('imageErrorBuilder error  $s ');
                return const Center(
                    child: Icon(Icons.image,color: Colors.grey,size: 30,));
              },
            ),
          ),
        ),
        Container(
          height: height,
          width: width,
          decoration: Decorations.kDecorationLinearGradient(
              radius: radius??8,
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black54,
                Colors.black26,
                Colors.black12,
                Colors.black12,
              ]
          ),
        ),
        Positioned(
            top: top,
            left:left ,
            right: right,
            bottom: bottom,
            child:
        BlackBoldText(
          label: label,
          fontSize: labelSize??16,
          labelColor: Colors.white,
        ))
      ],
    );
  }
}
