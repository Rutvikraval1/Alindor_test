
import 'package:alindor_test/utils/app_locale.dart';
import 'package:alindor_test/utils/app_style.dart';
import 'package:alindor_test/utils/custColors.dart';
import 'package:flutter/material.dart';


class bottomNavigationBar extends StatelessWidget {
  final  int currentIndex;
 final  Function(int index)  onTap;

  const bottomNavigationBar({super.key,required this.currentIndex,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      mouseCursor: MouseCursor.defer,
      backgroundColor: AppColors.primary_buttombar,
      unselectedFontSize: 14,
      selectedFontSize: 14,
      selectedLabelStyle: App_style().textWhite_IR,
      selectedItemColor: AppColors.whiteColor,
      unselectedItemColor: AppColors.whiteColor,
      currentIndex: currentIndex,
      onTap: (int index) { onTap(index); },
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon:  Image(image: AssetImage(AppImages.Save_icon),color: AppColors.whiteColor),
          label: 'Records',
        ),
        BottomNavigationBarItem(
          icon:  SizedBox(),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image(image: AssetImage(AppImages.analytics_icon),color: AppColors.whiteColor),
          label: 'Insight',
        ),
      ],
    );
  }
}
