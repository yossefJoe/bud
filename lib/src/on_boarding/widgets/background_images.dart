import 'package:bud/core/resources/images/app_images.dart';
import 'package:bud/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/resources/images/app_icons.dart';
import 'onboarding_item.dart';

class BackgroundImages {


 static List<OnboardingModel> data (BuildContext context){
    return [
      OnboardingModel(
        image: AppImages.onBoarding1,
        title: LocaleKeys.title1.tr(),
        description:  LocaleKeys.onboarding1.tr(),
      ),
      OnboardingModel(
        image: AppImages.onBoarding2,
        title:LocaleKeys.title2.tr(),
        description:  LocaleKeys.onboarding2.tr(),
      ),
      OnboardingModel(
        image:AppImages.onBoarding3,
        title:  LocaleKeys.title3.tr(),
        description:  LocaleKeys.onboarding3.tr(),
      ),
    ];
 }

}


