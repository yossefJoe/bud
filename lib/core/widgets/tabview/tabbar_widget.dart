
import 'package:bud/core/helper/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resources/colors/color.dart';
import '../../resources/styles/styles.dart';
import '../../themes/colors.dart';

class TabItemModel{
  final String label ;
  final String? image ;
  final Widget page ;
  TabItemModel({required this.label ,required this.page, this.image});
  Tab builder(){
    return TabWidgetItemBuilder(this);
  }
}

class TabWidgetItemBuilder extends Tab{
  TabWidgetItemBuilder(TabItemModel model, {Key? key}):super(key: key, text: model.label);
}

class TabBarWidget  extends StatelessWidget{
  final Function(int)? onTap;
  final List<TabItemModel> tabs ;
  TabBarWidget({Key? key ,required this.tabs, this.onTap});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        backgroundColor: scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: scaffoldBackgroundColor,
          bottom:
          TabBar(
            // isScrollable: true,
            indicatorColor:  primaryColor,
            dividerColor: AppColors.greyColor,
            unselectedLabelStyle: TextStyles.font14CustomGray400Weight.copyWith(fontSize: 20),
            labelStyle: TextStyles.font18Black700Weight,
            padding: 5.paddingAll,
            indicatorPadding: 0.paddingAll,
            labelPadding:  0.paddingHorizontal ,
            // indicator:  BoxDecoration(
            //   color: context.primaryColor,
            //   // borderRadius: const BorderRadius.all(Radius.circular(8)),
            //   // boxShadow: [
            //   //   BoxShadow(
            //   //     color: Colors.black.withOpacity(0.2),
            //   //     spreadRadius: 1,
            //   //     blurRadius: 1,
            //   //     offset: const Offset(0, 1), // changes position of shadow
            //   //   ),
            //   // ],
            //
            // ),
            indicatorSize: TabBarIndicatorSize.tab,
            onTap: onTap,
            tabs: tabs.map((e) => e.builder()
            ).toList(),
          ),
        ),
        body: TabBarView(
          // physics: const NeverScrollableScrollPhysics(),
          children: tabs.map((e) => e.page).toList(),
        ),
      ),
    );
  }

}
