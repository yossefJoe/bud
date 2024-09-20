// import 'package:bud/core/widgets/buttons/primary_button.dart';
// import 'package:flutter/material.dart';
//
//
// class ButtonChildScroll extends StatelessWidget {
//   final String title;
//   final List<Widget> children;
//   final Function()? onPressed;
//    const ButtonChildScroll({Key? key, required this.title, required this.children, this.onPressed}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Expanded(
//           child: SingleChildScrollView(
//             child: Column(
//               children: children,
//             ),
//           )
//         ),
//         PrimaryButton(
//           title: title,
//           onPressed: onPressed,
//           margin: basePadding,
//         ),
//       ],
//     );
//   }
// }
