//
// import 'package:bud/core/helper/extensions.dart';
// import 'package:flutter/cupertino.dart';
//
// import '../../resources/styles/styles.dart';
//
// class SelectionButtonChip extends StatelessWidget {
//   final String? title;
//   final String? initialValue;
//   final List<SelectionItem> items;
//   final EdgeInsetsGeometry? paddingChip;
//   final EdgeInsetsGeometry? margin;
//   final void Function(SelectionItem?)? onSelected;
//   final bool isScrollableGrid;
//
//   SelectionButtonChip({
//     Key? key,
//     this.title,
//     this.initialValue,
//     required this.items,
//     this.margin,
//     this.onSelected,
//     this.paddingChip,
//     this.isScrollableGrid = true,
//   }) : super(key: key);
//
//   SelectionItem? selectedType;
//
//   @override
//   Widget build(BuildContext context) {
//     _initialValue();
//     return Padding(
//       padding: margin ?? 8.paddingVert,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           if (title != null)
//          ...[ Text(
//             title ?? '',
//               style: TextStyles.font16Black500Weight,
//           ),
//           5.height,],
//           StatefulBuilder(
//             builder: (context, setState) {
//               return isScrollableGrid
//                   ? _buildChipsGrid(context, setState)
//                   : _buildChips(context, setState);
//             },
//           ),
//         ],
//       ),
//     );
//   }
//
//   _initialValue() {
//     selectedType = items.firstWhere((element) => element.id == initialValue,
//         orElse: () =>
//             items.isNotEmpty ? items.first : SelectionItem(title: '', id: ''));
//   }
//
//   Widget _buildChips(
//       BuildContext context, void Function(void Function()) setState) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       padding: 10.paddingStart,
//       child: Row(
//         children: items.map((e) {
//           return  SelectItem(
//             isWrap: true,
//             item: e,
//             types: items,
//             setState: setState,
//             selectedType: selectedType,
//             onSelected: (bool value) {
//               setState(() {
//                 if (selectedType == e) {
//                   selectedType = null;
//                 } else {
//                   selectedType = e;
//                 }
//                 onSelected!(selectedType!);
//               });
//             },
//             padding: paddingChip,
//           ).toList();
//     }
//
//
//       ),
//     );
//   }
//
//   Widget _buildChipsGrid(
//       BuildContext context, void Function(void Function()) setState) {
//     return GridView.builder(
//       shrinkWrap: true,
//       itemCount: items.length,
//       physics: const NeverScrollableScrollPhysics(),
//       padding: 10.paddingStart,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: items.length == 1 ? 1 : 2,
//         childAspectRatio: 3,
//         crossAxisSpacing: 10,
//         mainAxisSpacing: 10,
//       ),
//       itemBuilder: (context, index) => SelectItem(
//         item: items[index],
//         types: items,
//         setState: setState,
//         isWrap: false,
//         selectedType: selectedType,
//         onSelected: (bool value) {
//           setState(() {
//             if (selectedType == items[index]) {
//               selectedType = null;
//             } else {
//               selectedType = items[index];
//             }
//             onSelected?.call(selectedType);
//           });
//         },
//         padding: paddingChip,
//       ),
//     );
//   }
// }
//
// class SelectionItem {
//   final String? id;
//   final String title;
//   final String? date;
//   final String? day;
//   final String? icon;
//
//   SelectionItem({this.id,this.day, required this.title, this.icon,this.date,});
// }
//
// class SelectItem extends BaseStatelessWidget {
//   final SelectionItem item;
//   final List<SelectionItem> types;
//   final void Function(void Function()) setState;
//   final void Function(bool)? onSelected;
//   final SelectionItem? selectedType;
//   final EdgeInsetsGeometry? padding;
//   final bool isWrap;
//
//   SelectItem(
//       {Key? key,
//       required this.item,
//       required this.types,
//       required this.setState,
//       this.onSelected,
//       this.padding,
//       this.selectedType,
//       this.isWrap = false})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 37,
//       padding: 10.paddingEnd,
//       child: ChoiceChip(
//         label: row(context, isWrap: isWrap),
//         selected: selectedType == item,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         showCheckmark: false,
//         selectedColor: primaryColor,
//         visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
//         side: BorderSide(
//           color: selectedType == item ? primaryColor : dividerColor,
//           width: 1,
//         ),
//         padding: padding ?? const EdgeInsets.symmetric(vertical: 12, horizontal: 5),
//         onSelected: onSelected,
//       ),
//     );
//   }
//
//   Widget image(BuildContext context) {
//     return item.icon?.split('.').last == 'svg'
//         ? AppIcon(
//             icon: item.icon ?? '',
//             color:
//                 selectedType == item ? context.cardColor : context.primaryColor)
//         : Image.network(item.icon ?? '',
//             height: 25,
//             width: 25,
//             color: selectedType == item
//                 ? context.cardColor
//                 : context.primaryColor);
//   }
//
//   Widget text(BuildContext context) {
//     return FittedBox(
//       child: Text(
//         item.title,
//         style: context.textTheme.headlineMedium!.copyWith(
//           color: selectedType == item ? context.cardColor : hintTextColor,
//           fontSize: 15,
//         ),
//         textAlign: TextAlign.center,
//       ),
//     );
//   }
//
//   Widget row(BuildContext context, {bool isWrap = false}) {
//     return SizedBox(
//       // width: isWrap ? null : context.width / 2,
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         mainAxisSize: (item.icon != null && item.icon!.isNotEmpty)
//             ? MainAxisSize.min
//             : MainAxisSize.max,
//         children: [
//           if (item.icon != null && item.icon!.isNotEmpty) ...[
//             image(context),
//             10.pw,
//           ],
//           text(context),
//         ],
//       ),
//     );
//   }
// }
