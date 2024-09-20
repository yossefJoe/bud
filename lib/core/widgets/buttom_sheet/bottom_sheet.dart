//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// showAppBottomSheet(
//     BuildContext context, {
//       String? title,
//       required Widget child,
//       bool isScrollControlled = false,
//       bool isExpanded = true,
//       TextStyle? style,
//     }) {
//   showModalBottomSheet(
//     context: context,
//     shape: const RoundedRectangleBorder(
//       borderRadius: BorderRadius.only(
//         topLeft: Radius.circular(20),
//         topRight: Radius.circular(20),
//       ),
//     ),
//     clipBehavior: Clip.antiAliasWithSaveLayer,
//     isScrollControlled: isScrollControlled,
//     // constraints: BoxConstraints(
//     //   maxHeight: 500,
//     // ),
//     // backgroundColor: Colors.transparent,
//     builder: (context) {
//       return isScrollControlled
//           ? SizedBox(
//         height: MediaQuery.of(context).size.height * 0.8,
//         child: Scaffold(
//           body: SingleChildScrollView(
//             // padding: 100.paddingTop,
//             child: buildAppBottomSheetData(
//               context,
//               title: title,
//               child: child,
//               style: style,
//               isExpanded: isExpanded,
//             ),
//           ),
//         ),
//       )
//           : buildAppBottomSheetData(
//         context,
//         title: title,
//         child: child,
//         style: style,
//         isExpanded: isExpanded,
//       );
//     },
//   );
// }
//
// Widget buildAppBottomSheetData(
//     BuildContext context, {
//       String? title,
//       required Widget child,
//       TextStyle? style,
//       bool isExpanded = true,
//     }) {
//   return Container(
//     padding: 10.paddingAll,
//     color: Colors.white,
//     child: Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Container(
//           height: 5,
//           width: 50,
//           margin: 10.paddingBottom,
//           decoration: BoxDecoration(
//             color: Color(0xff736F5A),
//             borderRadius: BorderRadius.circular(5),
//           ),
//         ),
//         if (title != null) ...[
//           10.ph,
//           Text(
//             title,
//             style: style ?? context.headlineLarge.copyWith(fontSize: 18),
//             textAlign: TextAlign.center,
//           ),
//         ],
//         10.ph,
//         isExpanded ? Expanded(child: child) : child,
//         10.ph,
//       ],
//     ),
//   );
// }
//
// showSuccessSheet(BuildContext context,
//     {required String title, String? message, required Function()? onPressed}) {
//   showAppBottomSheet(
//     context,
//     title: title,
//     isScrollControlled: false,
//     isExpanded: false,
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         if (message != null)
//           Text(
//             message ?? '',
//             style: context.bodySmall.copyWith(fontSize: 16),
//             textAlign: TextAlign.center,
//           ),
//         PrimaryButton(
//           title: context.strings.ok,
//           margin: 20.paddingTop + 50.paddingHoriz,
//           onPressed: () {
//             onPressed!();
//           },
//         ),
//       ],
//     ),
//   );
// }