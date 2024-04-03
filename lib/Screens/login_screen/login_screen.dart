

import 'package:alindor_test/Screens/IndRecord_screen/IndRecord_screen.dart';
import 'package:alindor_test/utils/app_locale.dart';
import 'package:alindor_test/utils/app_style.dart';
import 'package:alindor_test/utils/custColors.dart';
import 'package:alindor_test/widgets/Scaffold_widget.dart';
import 'package:alindor_test/widgets/asset_img/asset_image_show.dart';
import 'package:alindor_test/widgets/card/Cus_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold_widget(
      backgroundColor: AppColors.primary_color_bg,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const IndRecord_screen(),));
                },
                child: google_card(context))
            ],
          ),
        ),
      ),
    );
  }

  Widget google_card(context){
    return cus_container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Asset_imge_show().Img_asset(AppImages.google_icon,height: 30),
            const SizedBox(width: 20,),
            Text('Google auth',style: App_style().textWhite_IR,)
          ],
        ),
      ),
    );
  }
}
