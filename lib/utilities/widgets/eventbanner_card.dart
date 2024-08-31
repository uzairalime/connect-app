import 'dart:developer';

import 'package:connectapp/utilities/text/textstyle.dart';
import 'package:connectapp/utilities/widgets/custom_btn.dart';
import 'package:connectapp/utilities/widgets/customtile.dart';
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
        width: Get.width*0.9,
        height: 130,
        decoration: BoxDecoration(
          image:  DecorationImage(
            image: AssetImage(bgBanner),
            fit: BoxFit.cover,
          ),
          color: Colors.amber,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.only(right: 8),
        // margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(45, 38, 75, 0.5),
                borderRadius: BorderRadius.circular(10),
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
