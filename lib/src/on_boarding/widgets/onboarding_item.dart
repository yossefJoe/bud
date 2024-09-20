
import 'package:bud/core/helper/extensions.dart';
import 'package:bud/core/resources/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/utils/helper_methods.dart';
import '../../../core/widgets/buttons/label_button.dart';
import '../../../core/widgets/texts/black_texts.dart';
import '../../../core/widgets/texts/hint_texts.dart';

class OnboardingItem extends StatelessWidget {
  final OnboardingModel item;

  OnboardingItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        (kToolbarHeight ).height,
        Align(
          alignment: AlignmentDirectional.topStart,
          child: LabelButton(
            title:'skip',
            style: TextStyles.font16CustomGray500Weight.copyWith(fontSize: 18),
            onTap: () async {
              // pushNamedAndRemoveUntil(Routes.intro);
              // await HelperMethods.setFirstTime();
            },
          ),
        ),
        60.height,
        SvgPicture.asset(
          item.image,
          height: 250,
        ),
        20.height,
        Padding(
          padding: 10.paddingVert,
          child: BlackBoldText(
            label: item.title,
          ),
        ),
        HintMediumText(
          label: item.description,
          fontSize: 14,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class OnboardingModel {
  String title;
  String description;
  String image;
  bool? isImageStart;

  OnboardingModel(
      {required this.title,
      required this.description,
      required this.image,
      this.isImageStart});
}
