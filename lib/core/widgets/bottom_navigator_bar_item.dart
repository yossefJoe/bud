import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/fonts/app_fonts.dart';
import 'buttons/app_icon.dart';

class BottomNavigatorBarItem extends StatelessWidget {
  final String icon;
  final String? label;
  final Color? color;
  final VoidCallback onTap;

  const BottomNavigatorBarItem({
    Key? key,
    required this.icon,
    this.label,
    this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        child: label == null
            ? Container(
                height: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: color ?? Theme.of(context).primaryColor,
                    width: 2,
                  ),
                  shape: BoxShape.circle,
                ),
                child: AppIcon(
                  icon: icon,
                  color: color ?? Theme.of(context).primaryColor,
                ),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppIcon(
                    icon: icon,
                    color: color ?? Theme.of(context).primaryColor,
                  ),
                  Text(
                    label!,
                    style: TextStyle(
                        color: color ?? Theme.of(context).primaryColor,
                        fontSize: 12),
                  ),
                ],
              ),
      ),
    );
  }
}
