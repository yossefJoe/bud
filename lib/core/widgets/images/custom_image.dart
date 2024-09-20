import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../resources/colors/color.dart';
import '../../resources/images/app_images.dart';
import 'custom_cach_image.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.image,  this.radius, this.fit, this.width, this.height, this.openImage});
  final String image;
  final bool? openImage;
  final double? radius;
  final double? width;
  final double? height;
  final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: openImage==false?null:
          (){
        ImageProvider imageProvider = NetworkImage(image);
        openBottomSheet(context, imageProvider);
            },
      child: SizedBox(
        height: height,
        width: width,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius??0),
          child: Image.network(
            image,
            fit:fit?? BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return  const Center(
                child: SpinKitFadingCircle(
                  color: primaryColor, // يمكنك تخصيص اللون هنا
                  size: 50.0,
                ),
              );
            },
            errorBuilder: (context, error, v) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(radius??0),
                child: Image.asset(AppImages.holder,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class CustomImageOnlyRadius extends StatelessWidget {
  const CustomImageOnlyRadius({super.key, required this.image,   this.fit, this.width, this.height, this.topRightRadius, this.bottomRightRadius, this.topLeftRadius, this.bottomLeftRadius});
  final String image;
  final double? topRightRadius;
  final double? bottomRightRadius;
  final double? topLeftRadius;
  final double? bottomLeftRadius;
  final double? width;
  final double? height;
  final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(topLeftRadius??0),
          topRight: Radius.circular(topRightRadius??0),
          bottomRight: Radius.circular(bottomRightRadius??0),
          bottomLeft: Radius.circular(bottomLeftRadius??0)
        ),
        child: Image.network(
          image,
          fit:fit?? BoxFit.cover,
          errorBuilder: (context, error, v) {
            return ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(topLeftRadius??0),
                  topRight: Radius.circular(topRightRadius??0),
                  bottomRight: Radius.circular(bottomRightRadius??0),
                  bottomLeft: Radius.circular(bottomLeftRadius??0)
              ),
              child: Image.asset(AppImages.holder,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}

class CustomImageAssets extends StatelessWidget {
  const CustomImageAssets({super.key, required this.image,  this.radius, this.fit, this.width, this.height, this.openImage});
  final String image;
  final bool? openImage;
  final double? radius;
  final double? width;
  final double? height;
  final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius??0),
        child: Image.asset(
          image,
          fit:fit?? BoxFit.cover,
          errorBuilder: (context, error, v) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(radius??0),
              child: Image.asset(AppImages.holder,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}
class CustomImageAssetsOnlyRadius extends StatelessWidget {
  const CustomImageAssetsOnlyRadius({super.key, required this.image,   this.fit, this.width, this.height, this.topRightRadius, this.bottomRightRadius, this.topLeftRadius, this.bottomLeftRadius});
  final String image;
  final double? topRightRadius;
  final double? bottomRightRadius;
  final double? topLeftRadius;
  final double? bottomLeftRadius;
  final double? width;
  final double? height;
  final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeftRadius??0),
            topRight: Radius.circular(topRightRadius??0),
            bottomRight: Radius.circular(bottomRightRadius??0),
            bottomLeft: Radius.circular(bottomLeftRadius??0)
        ),
        child: Image.asset(
          image,
          fit:fit?? BoxFit.cover,
          errorBuilder: (context, error, v) {
            return ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(topLeftRadius??0),
                  topRight: Radius.circular(topRightRadius??0),
                  bottomRight: Radius.circular(bottomRightRadius??0),
                  bottomLeft: Radius.circular(bottomLeftRadius??0)
              ),
              child: Image.asset(AppImages.holder,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}
