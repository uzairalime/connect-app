import 'dart:developer';

import 'package:connectapp/utilities/appdimenstios.dart';
import 'package:connectapp/utilities/colors/appcolors.dart';
import 'package:connectapp/utilities/text/textstyle.dart';
import 'package:connectapp/utilities/widgets/card_btn.dart';
import 'package:connectapp/utilities/widgets/customtileblack.dart';
import 'package:connectapp/utilities/widgets/img_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     icon: const Icon(Icons.arrow_back_ios),
      //     onPressed: () => Get.back(),
      //   ),
      // ),
      body: SingleChildScrollView(

        child: Expanded(
          child: Stack(
            children: [
              // title Image
              Image.asset('assets/images/info_img.png'),
              Positioned(
                child: Padding(
                  padding: EdgeInsets.all(AppDm().paddinglr),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: Get.height*0.38,),
                      Container(
                        width: Get.width * 0.95,
                        height: Get.height * 0.2,
                        padding: EdgeInsets.symmetric(
                            horizontal: AppDm().paddingxx,
                            vertical: AppDm().paddingxx),
                        decoration: BoxDecoration(
                          color: Appcolors().white,
                          borderRadius: BorderRadius.circular(AppDm().radiuslr),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0, 0),
                              blurRadius: 5,
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Coldplay : Music of the Spheres",
                              style: blackTextlr,
                            ),
                            CustomTileblack(
                              title: "Gelora Bung Karno Stadium, Jakarta",
                              icon: "assets/icons/location_bl_icon.svg",
                            ),
                            CustomTileblack(
                              title: "November 15 2023",
                              icon: "assets/icons/calender_bl_icon.svg",
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const CircleAvatar(
                                  radius: 18,
                                  backgroundImage:
                                      AssetImage('assets/images/profile.png'),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '50K+ Participants',
                                  style: blackTextmd,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      // Description title text
                      Text("Description", style: blackTextlr),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      // Description text
                      Text(
                        "Integer id augue iaculis, iaculis orci ut, blandit quam. Donec in elit auctor, finibus quam in, phar. Proin id ligula dictum, covalis enim ut, facilisis massa. Mauris a nisi ut sapien blandit imperdi. Interdum et malesuada fames ac ante ipsum primis in faucibs. Sed posuere egestas nunc ut tempus. Fu ipsum dolor sit amet. Read More..",
                        style: greyTextmd,
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      // Location and venue text
                      Text("Venue & Location", style: blackTextlr),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      // location img
                      ImgBox(img: 'assets/images/map_img.png'),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // buttom bar
      bottomNavigationBar: Container(
        height: 100,
        padding: EdgeInsets.all(AppDm().paddingxx),
        decoration: BoxDecoration(
            color: Appcolors().white,
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                offset: Offset(0, 0),
                blurRadius: 5,
                spreadRadius: 0,
              )
            ],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppDm().radiusxx),
                topRight: Radius.circular(AppDm().radiusxx))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Start from",
                  style: blackTextsm,
                ),
                Text(
                  "11 : 00 am",
                  style: blackTextlr,
                )
              ],
            ),
            CardBtn(
              name: "Join",
              onTap: () => log("join btn pressed"),
              
            )
          ],
        ),
      ),
    );
  }
}
