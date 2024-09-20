// import 'package:app/core/utils/navigator.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import '../../../src/main_index.dart';
// import '../images/image_network.dart';
//
// class CustomSliderWidget extends StatelessWidget {
//   final StreamStateInitial<List?> slidesStream;
//   final bool? isHasRadius;
//   final double? radius;
//   final double? height;
//   final bool? isCenterPages;
//
//   CustomSliderWidget({
//     super.key,
//     required this.slidesStream,
//     this.isHasRadius,
//     this.height,
//     this.isCenterPages,
//     this.radius,
//   });
//
//   CarouselController carouselController = CarouselController();
//   int currentIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: height ?? 210,
//       child: StreamBuilder<List<Slide>?>(
//           stream: slidesStream.stream,
//           builder: (context, snapshot) {
//             return snapshot.data == null
//                 ? LoadingView()
//                 : StatefulBuilder(builder: (context, setState) {
//                     return Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: <Widget>[
//                         SizedBox(
//                           height: height ?? 175,
//                           // width: double.infinity,
//                           child: CarouselSlider(
//                             carouselController: carouselController,
//                             items: snapshot.data
//                                 ?.map(
//                                   (e) => isHasRadius == true
//                                       ? InkWell(
//                                     onTap: (){
//                                       pushNamed(Routes.advertisementPage,arguments: e);
//                                     },
//                                         child: SizedBox(
//                                             width: double.infinity,
//                                             child: ImageNetwork(
//                                               image: e.images ?? '',
//                                               fit: BoxFit.cover,
//                                               radius: radius ?? 10,
//                                             )),
//                                       )
//                                       : InkWell(
//                                     onTap: (){
//                                       pushNamed(Routes.advertisementPage,arguments: e);
//                                     },
//                                         child: SizedBox(
//                                             width: double.infinity,
//                                             child: ImageNetwork(
//                                               margin: 5.paddingHoriz,
//                                               image: e.images ?? '',
//                                               fit: BoxFit.cover,
//                                             )),
//                                       ),
//                                 )
//                                 .toList(),
//                             options: CarouselOptions(
//                               height: height ?? 175,
//                               aspectRatio: 16 / 9,
//                               viewportFraction:0.9,
//                               enableInfiniteScroll: true,
//                               reverse: false,
//                               autoPlay: true,
//                               autoPlayAnimationDuration:
//                                   const Duration(milliseconds: 800),
//                               autoPlayCurve: Curves.easeInOut,
//                               enlargeCenterPage: isCenterPages ?? false,
//                               onPageChanged: (index, reason) {
//                                 setState(() {
//                                   currentIndex = index;
//                                 });
//                               },
//                               scrollDirection: Axis.horizontal,
//                             ),
//                           ),
//                         ),
//                         1.ph,
//                         Center(
//                           child: SizedBox(
//                             height: 25,
//                             width: 60,
//                             child: ListView.builder(
//                                  scrollDirection: Axis.horizontal,
//                                 itemCount: snapshot.data!.length,
//                                 itemBuilder: (context,index){
//                               return GestureDetector(
//                                 onTap: () => carouselController.animateToPage(index),
//                                 child: Container(
//                                   width: 12.0,
//                                   height: 12.0,
//                                   margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
//                                   decoration: BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     color: currentIndex == index
//                                         ? Theme.of(context).primaryColor
//                                         : Colors.black.withOpacity(0.2),
//                                   ),
//                                 ),
//                               );
//                             }),
//                           ),
//                         ),
//                       ],
//                     );
//                   });
//           }),
//     );
//   }
// }
