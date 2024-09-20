
import 'package:flutter/material.dart';

import '../resources/styles/styles.dart';

class UndefinedRouteScreen extends StatelessWidget {
  const UndefinedRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
          child:Text('Not found this route',style: TextStyles.font18CustomGray600Weight,) ,
        ),
    );
  }
}
