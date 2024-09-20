import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCountryWidget extends StatelessWidget {
  final void Function(CountryCode? code)? onChanged;
   const CustomCountryWidget({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade300)
      ),
      alignment: Alignment.bottomLeft,
      child: Center(
        child: CountryListPick(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: const Text('Choose your country'),
            ),
            theme: CountryTheme(
              isShowFlag: true,
              isShowTitle: false,
              isShowCode: false,
              isDownIcon: false,
              showEnglishName: false,
            ),
            initialSelection: '+20',
            onChanged: (CountryCode? code) {
              onChanged!(code);
            },
            useUiOverlay: true,
            useSafeArea: false,

        ),
      ),
    );
  }
}
