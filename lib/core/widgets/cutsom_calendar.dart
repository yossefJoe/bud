// import 'package:easy_date_timeline/easy_date_timeline.dart';
// import 'package:flutter/material.dart';
// import '../components/base_stateless_widget.dart';
//
//
// class CustomCalender extends BaseStatelessWidget {
//   final void Function(DateTime) onDateChange;
//    CustomCalender({super.key, required this.onDateChange});
//
//   @override
//   Widget build(BuildContext context) {
//     return EasyDateTimeLine(
//       initialDate: DateTime.now(),
//       onDateChange: onDateChange,
//       headerProps:  EasyHeaderProps(
//         selectedDateStyle: primaryBoldStyle,
//         monthStyle:primaryBoldStyle,
//         monthPickerType: MonthPickerType.switcher,
//         dateFormatter: const DateFormatter.fullDateDMY(),
//       ),
//       dayProps:  EasyDayProps(
//         height: 85,
//         width: 60,
//         dayStructure: DayStructure.dayStrDayNum,
//         inactiveDayStyle: DayStyle(
//           decoration: BoxDecoration(
//               borderRadius: const BorderRadius.all(Radius.circular(8)),
//               color: Colors.grey.shade200
//           ),
//         ),
//         activeDayStyle:  DayStyle(
//           decoration: BoxDecoration(
//               borderRadius: const BorderRadius.all(Radius.circular(8)),
//               color: Colors.white,
//               border: Border.all(color: primaryColor,width: 2)
//
//           ),
//         ),
//         activeDayNumStyle:primaryBoldStyle,
//         activeDayStrStyle:primaryBoldStyle.copyWith(fontSize: 13),
//         inactiveDayNumStyle:blackMediumStyle.copyWith(color: Colors.grey),
//         inactiveDayStrStyle:blackMediumStyle.copyWith(color: Colors.grey,fontSize: 13),
//       ),
//
//     );
//   }
// }
