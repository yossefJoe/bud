import 'package:bud/core/resources/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../decorations/decorations.dart';
import '../../resources/colors/color.dart';
import '../../utils/validation.dart';

class CustomPinCode extends StatelessWidget {
  final TextEditingController pinCodeController;
   CustomPinCode({Key? key, required this.pinCodeController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyles.font18Black700Weight.copyWith(fontSize: 18),
      decoration: Decorations.kDecorationBorderRadius(),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: primaryColor),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        border: Border.all(color: primaryColor)
        // color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    return Pinput(
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      length: 6,
      validator: (value) => Validation.validateRequired(value ?? ''),
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      showCursor: true,
      controller: pinCodeController,
      errorTextStyle: TextStyles.font16CustomGray500Weight.copyWith(color: Colors.red),
    );
  }
}
