
import 'package:flutter/cupertino.dart';

import '../../decorations/decorations.dart';
import '../../resources/colors/color.dart';
import '../../resources/images/app_icons.dart';
import '../buttons/app_icon.dart';
import '../buttons/primary_button.dart';

class SuccessWidget extends StatelessWidget {
  final String title;
  final String message;
  final bool showFooter;
  final String? footerMessage;
  final Function()? onPressed;

  SuccessWidget(
      {Key? key,
      required this.message,
      required this.title,
      this.onPressed,
      this.showFooter = false,
      this.footerMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (showFooter)
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            width: double.infinity,
            alignment: Alignment.center,
            decoration: Decorations.kDecorationOnlyRadius(
                color: greyColor.withOpacity(0.1)),
            child: Text(
              footerMessage!,
            ),
          ),
        const SizedBox(height: 30),
        // const AppIcon(icon: AppIcons.done, size: 100),
        const SizedBox(height: 20),
        // Text(message, style: Theme.of(context).textTheme.headlineLarge),
        Spacer(),
        PrimaryButton(
          title: title,
          elevation: 5,
          margin: const EdgeInsets.only(bottom: 30),
          onPressed: onPressed,
        ),
      ],
    );
  }
}
