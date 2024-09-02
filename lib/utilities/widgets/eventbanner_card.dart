//================================ dimensitons ==============================
import 'dart:developer';
import 'package:connectapp/utilities/appdimenstios.dart';
import 'package:connectapp/utilities/text/textstyle.dart';
import 'package:connectapp/utilities/widgets/custom_btn.dart';
import 'package:connectapp/utilities/widgets/customtilewhite.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventbannerCard extends StatelessWidget {
  final title;
  final location;
  final date;
  final time;
  final bgBanner;
  final btntitle;
  final VoidCallback? onTap;
    EventbannerCard(
      {super.key,
      this.title,
      this.location,
      this.date,
      this.time,
      this.bgBanner, this.btntitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: AppDm().eventbannerw,
        height: AppDm().eventbannerh,
        decoration: BoxDecoration(
          image:  DecorationImage(
            image: AssetImage(bgBanner),
            fit: BoxFit.cover,
          ),
          color: Colors.amber,
          borderRadius: BorderRadius.circular(AppDm().radiusxx),// pahla 20 tha ab dimenstions 25
        ),
        margin: EdgeInsets.only(right: AppDm().marginmd),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // btn
            CustomBtn(
                name: "Individual Event", onTap: onTap?? ()=> log("event btn") ),
            // Event Details Card
            Container(
              width: Get.width,
              height: 110,
              padding:  EdgeInsets.symmetric(horizontal: AppDm().paddinglr, vertical: AppDm().paddinglr),
              margin:  EdgeInsets.symmetric(horizontal: AppDm().marginlr, vertical: AppDm().marginlr),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(45, 38, 75, 0.5),
                borderRadius: BorderRadius.circular(AppDm().radiuslr),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: whiteTextlr,
                      ),
                      Customtile(
                        title: location,
                        icon: 'assets/icons/location_icon.svg',
                      ),
                      Customtile(
                        title: date,
                        icon: 'assets/icons/calender_icon.svg',
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Start From",
                        style: whiteTextmd,
                      ),
                      Text(
                        time,
                        style: whiteTextlr,
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  )
                ],
              ),
            )
          ],
        ));
  }
}
