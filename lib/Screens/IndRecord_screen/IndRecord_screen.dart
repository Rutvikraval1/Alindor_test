import 'package:alindor_test/utils/app_locale.dart';
import 'package:alindor_test/utils/app_style.dart';
import 'package:alindor_test/utils/custColors.dart';
import 'package:alindor_test/widgets/ProgressBar/progress_bar.dart';
import 'package:alindor_test/widgets/Scaffold_widget.dart';
import 'package:alindor_test/widgets/asset_img/asset_image_show.dart';
import 'package:alindor_test/widgets/button/bottomNavigationBar.dart';
import 'package:alindor_test/widgets/button/custom_outline_button.dart';
import 'package:alindor_test/widgets/card/Cus_container.dart';
import 'package:alindor_test/widgets/card/chart_container.dart';
import 'package:flutter/material.dart';

class IndRecord_screen extends StatefulWidget {
  const IndRecord_screen({super.key});

  @override
  State<IndRecord_screen> createState() => _IndRecord_screenState();
}

class _IndRecord_screenState extends State<IndRecord_screen> {
  int index = 0;

  List user_name = [
    'John',
    'Steve',
    'Mike',
    'Gori',
    'Anna',
    '...',
  ];
  int user_index = 1;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold_widget(
        backgroundColor: AppColors.primary_color_bg,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              children: [
                chart_container(
                  child: Column(
                    children: [
                      cus_container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const IndRecord_screen(),
                                ));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Asset_imge_show()
                                    .Img_asset(AppImages.Play_icon, height: 30),
                                const SizedBox(
                                  width: 5,
                                ),
                                Asset_imge_show().Img_asset(
                                    AppImages.voice_data,
                                    height: 30),
                              ],
                            ),
                          ),
                        ),
                      ),
                      cus_size_box().sizedBox_8,
                      Text(
                        "Business partners discussed issues of supply disruptions from China. Ultimately they decided to find another supplier.",
                        textAlign: TextAlign.center,
                        style: App_style().textWhite_IR,
                      ),
                      cus_size_box().sizedBox_30,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: width / 3.5,
                            child: custom_outlined_button(
                              onPressed: () {},
                              text: "Full text",
                            ),
                          ),
                          SizedBox(
                            child: custom_outlined_button(
                              onPressed: () {},
                              color: AppColors.primary_border_col,
                              text: "Full summary",
                            ),
                          ),
                        ],
                      ),
                      cus_size_box().sizedBox_20,
                    ],
                  ),
                ),
                cus_size_box().sizedBox_20,
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.whiteColor),
                      borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: SizedBox(
                    height: 35,
                    child: ListView.builder(
                      itemCount: user_name.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => IntrinsicHeight(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: InkWell(
                            onTap: () {
                              user_index = index;
                              setState(() {});
                            },
                            child: Container(
                                height: 21,
                                width: 58,
                                decoration: user_index == index
                                    ? BoxDecoration(
                                        color: AppColors.primary_border_col,
                                        borderRadius: BorderRadius.circular(5))
                                    : null,
                                alignment: Alignment.center,
                                child: Text(
                                  user_name[index],
                                  style: App_style().textWhite_s10_IR,
                                )),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                cus_size_box().sizedBox_10,
                Text(
                  "small quote of Speaker1",
                  style: App_style().textWhite_IR,
                ),
                const Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.edit,
                        color: AppColors.whiteColor, size: 15)),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.whiteColor),
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Asset_imge_show().Img_asset(AppImages.result_icon),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Personality Score",
                            style: App_style().textWhite_s12_IR,
                          ),
                          Row(
                            children: [
                              Text(
                                "8",
                                style: App_style().textWhite_s25_IS,
                              ),
                              Text(
                                "/",
                                style: App_style().textWhite_s15_IR,
                              ),
                              Text(
                                "10",
                                style: App_style().textWhite_s15_IR,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                cus_size_box().sizedBox_15,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: comman_slider_bar(title: "Trust"),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: comman_slider_bar(title: "Sentiment"),
                          )
                        ],
                      ),
                      cus_size_box().sizedBox_10,
                      Row(
                        children: [
                          Expanded(
                            child: comman_slider_bar(title: "Empathy"),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: comman_slider_bar(title: "Charisma"),
                          )
                        ],
                      ),
                      cus_size_box().sizedBox_10,
                      Row(
                        children: [
                          Expanded(
                            child: comman_slider_bar(title: "Trust"),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: comman_slider_bar(title: "Sentiment"),
                          )
                        ],
                      ),
                      cus_size_box().sizedBox_10,
                      Row(
                        children: [
                          Expanded(
                            child: comman_slider_bar(title: "Empathy"),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: comman_slider_bar(title: "Charisma"),
                          )
                        ],
                      ),
                      cus_size_box().sizedBox_10,
                    ],
                  ),
                ),
                cus_size_box().sizedBox_15,
                comman_Column(
                  width: width / 1.2,
                  height: height / 17,
                  title: "Quotes reflecting attitude towards me",
                  sub_title: "Quotes: here will be a set of quotes ",
                ),
                cus_size_box().sizedBox_15,
                comman_Column(
                  width: width / 1.2,
                  height: height / 17,
                  title: "Conclusion",
                  sub_title:
                      "First, speaker mentioned he keeps a healthy lifestyle, but he likes alcohol as well..",
                ),
                cus_size_box().sizedBox_15,
                comman_Column(
                  width: width / 1.2,
                  height: height / 17,
                  title: "Favorite topics and interests",
                  sub_title: "Sport. Speaker mentioned he likes a golf",
                ),
                cus_size_box().sizedBox_15,
                comman_Column(
                  width: width / 1.2,
                  height: height / 17,
                  title: "Least favorite topics",
                  sub_title:
                      "First, speaker mentioned he keeps a healthy lifestyle, but he likes alcohol as well...",
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: SizedBox(
          width: 100.0,
          child: FittedBox(
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.transparent,
              highlightElevation: 100,
              child: Asset_imge_show().SvgPicture_asset(AppImages.Voice_icon),
            ),
          ),
        ),
        bottomNavigationBar: bottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            print("value");
            print(value);
            setState(() {
              index = value;
            });
          },
        ));
  }

  Widget comman_Column({
    double? width,
    double? height,
    String title = '',
    String sub_title = '',
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: App_style().textdarkgrey_s15_IR,
        ),
        cus_size_box().sizedBox_5,
        cus_container(
          child: Container(
            width: width,
            height: height,
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
              child: Text(
                sub_title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: App_style().textWhite_s12_IR,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget comman_slider_bar({String title = ''}) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style: App_style().textWhite_s10_IR,
      ),
      cus_size_box().sizedBox_3,
      cus_container(
        height: 20,
        child: ProgressBar(
          value: 0.7,
          height: 20,
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [
                0,
                0.4
              ],
              colors: [
                Color(0xff021D5A),
                Color(0xff4CA7E8),
              ]),
        ),
      )
    ]);
  }
}
