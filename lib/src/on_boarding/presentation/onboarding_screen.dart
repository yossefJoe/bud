//
// import 'package:bud/core/helper/extensions.dart';
// import 'package:bud/core/widgets/texts/hint_texts.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//
// import '../../../core/utils/helper_methods.dart';
// import '../widgets/background_images.dart';
// import '../widgets/onboarding_item.dart';
//
// class OnBoardingScreen extends StatelessWidget {
//   OnBoardingScreen({Key? key}) : super(key: key);
//
//   PageController? controller = PageController(initialPage: 0, viewportFraction: 1.0);
//   int index = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: 20.paddingAll,
//       child: Stack(
//         children: [
//           PageView.builder(
//             controller: controller,
//             reverse: false,
//             itemCount: BackgroundImages.data(context).length,
//             onPageChanged: (index) {
//               pageStream.setData(index);  // Update pageStream with current page index
//             },
//             itemBuilder: (context, index) {
//               return OnboardingItem(
//                 item: BackgroundImages.data(context)[index],
//               );
//             },
//           ),
//           floatingActionButton(context),
//         ],
//       ),
//     );
//   }
//
//   Widget skipTextButton(BuildContext context) {
//     return GestureDetector(
//       onTap: () async {
//         // await HelperMethods.setFirstTime();
//         // pushNamedAndRemoveUntil(Routes.navigationPages);
//       },
//       child:HintBoldText(
//         label: 'Skip',
//       )
//     );
//   }
//
//   Widget floatingActionButton(BuildContext context) {
//     return Padding(
//       padding: 40.paddingBottom,
//       child: Stack(
//         alignment: AlignmentDirectional.bottomStart,
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               StreamBuilder<int>(
//                 initialData: 0,
//                 stream: pageStream.stream,  // Listen to the stream for page changes
//                 builder: (context, snapshot) {
//                   final currentPage = snapshot.data ?? 0;
//
//                   return Column(
//                     children: [
//                       Container(
//                         alignment: AlignmentDirectional.bottomCenter,
//                         margin: 20.paddingBottom,
//                         child: AnimatedSmoothIndicator(
//                           activeIndex: currentPage,
//                           count: BackgroundImages.data(context).length,
//                           textDirection: TextDirection.ltr,
//                           effect: ExpandingDotsEffect(
//                             dotHeight: 10,
//                             dotWidth: 10,
//                             dotColor: context.dividerColor,
//                             activeDotColor: context.primaryColor,
//                           ),
//                         ),
//                       ),
//                       PrimaryButton(
//                         title: currentPage == 2
//                             ? context.strings.get_started
//                             : context.strings.next,
//                         margin: 30.paddingVert,
//                         onPressed: () {
//                           if (controller?.hasClients ?? false) {
//                             if (currentPage == BackgroundImages.data(context).length - 1) {
//                               pushNamedAndRemoveUntil(Routes.loginPage);
//                               HelperMethods.setFirstTime();
//                             } else {
//                               controller?.animateToPage(
//                                 currentPage + 1,
//                                 duration: const Duration(milliseconds: 500),
//                                 curve: Curves.easeInOut,
//                               );
//                             }
//                           }
//                         },
//                       ),
//                     ],
//                   );
//                 },
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
