
import 'package:alindor_test/utils/app_locale.dart';
import 'package:alindor_test/utils/app_style.dart';
import 'package:alindor_test/utils/custColors.dart';
import 'package:alindor_test/widgets/card/Cus_container.dart';
import 'package:alindor_test/widgets/input/animatedText.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class cus_dialogBox{

  showAlertDialog(BuildContext context,{String title='',String description='',}) {


    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () { },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.transparent,
      elevation: 1,
      // title: Center(child: Text(title)),
      // titleTextStyle: App_style().textWhite_s15_IR,
      contentTextStyle: App_style().textWhite_s12_IR,

      content: cus_container(
        height: MediaQuery.of(context).size.height/2,
        width:MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  cus_size_box().sizedBox_5,
                  Text(title,style:App_style().textWhite_s15_IR,),
                  cus_size_box().sizedBox_5,
                  Divider(),
                  cus_size_box().sizedBox_5,
                  Expanded(child:
                  ListView(
                    shrinkWrap: true,
                    children: [
                      Cus_AnimatedText(description: description),
                      // Text(description,textAlign: TextAlign.center,style:App_style().textWhite_s12_IR,),
                    ],
                  )
                  )


                ],
              ),
            ),
             Positioned(
              top: 10,
                right: 15,
                child: GestureDetector(
                    onTap: ()=>Navigator.pop(context),
                    child: const Icon(Icons.close,color: AppColors.whiteColor,)))
          ],
        ),
      ),

    );



    // show the dialog
    showDialog(
      context: context,
      builder: (context) {
        return alert;
      },
    );
  }
}


