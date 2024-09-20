import 'package:bud/core/helper/extensions.dart';
import 'package:flutter/material.dart';
import '../texts/black_texts.dart';

class CustomCheckbox extends StatelessWidget {
  final String title;
  final Function(bool)? onChanged;
  final Function()? onTextTap;
  final bool? isUnderline;
  final bool? isRev;
   bool? value;

   CustomCheckbox(
      {Key? key, required this.title, this.onChanged, this.isUnderline = false, this.onTextTap, this.isRev, this.value=false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isAgree = false;
    if(isRev==true){
      return Padding(
        padding: 16.paddingHorizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            GestureDetector(
              onTap: onTextTap,
              child:BlackMediumText(label: title,
              ),
            ),
            const Spacer(),
            StatefulBuilder(builder: (context, setState) {
              return Checkbox(
                value: isAgree,
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
                onChanged: (value) {
                  setState(() {
                    isAgree = value!;
                  });
                  onChanged!(isAgree);
                },
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              );
            }),
          ],
        ),
      );
    }
    else{
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          StatefulBuilder(builder: (context, setState) {
            return Checkbox(
              value: value,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
              onChanged: (val) {
                setState(() {
                  value = val!;
                });
                onChanged!(value!);
              },
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            );
          }),
          GestureDetector(
            onTap: onTextTap,
            child:

            BlackMediumText(label: title,
              fontSize: 13,
              labelColor: const Color(0xff09101D),
            ),
          ),
        ],
      );
    }

  }
}
