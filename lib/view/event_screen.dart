import 'dart:developer';

import 'package:connectapp/utilities/colors/appcolors.dart';
import 'package:connectapp/utilities/text/textstyle.dart';
import 'package:connectapp/utilities/widgets/colorbox_btn.dart';
import 'package:connectapp/utilities/widgets/eventbanner_card.dart';
import 'package:connectapp/utilities/widgets/searchfieldcustom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        // Menu_nav btn
        leading: GestureDetector(
            onTap: () => log("Menu_nav btn"),
            child: SvgPicture.asset(
              'assets/icons/menu_icon.svg',
              width: 20,
            )),
        title: Text("Events",style: blackTextlr,),
        centerTitle: true,
        actions: [
          // Notification btn
          GestureDetector(
              onTap: () => log("notification btn"),
              child: SvgPicture.asset(
                'assets/icons/bell_icon.svg',
                width: 30,
              )),
          const SizedBox(
            width: 15,
          ),
          // Profile Image
          GestureDetector(
            onTap: () => log("Profile Image"),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Appcolors().secondary,
              foregroundImage: const AssetImage(
                "assets/images/profile_ava.png",
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            // Search bar
            SearchfieldCustom(
              hintText: "Search events..",
              searchController: searchController,
            ),
            SizedBox(
              height: 20,
            ),
            // All Events text and btn List
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // All Events btn
                SizedBox(
                  width: Get.width*0.95,
                  height: 50,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                    return ColorboxBtn(title: "Mental Health", onTap: () => log("Mental Health Btn"), boxColor: Appcolors().secondary,);
                  },),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // Suggested Events text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Events",
                    style: blackTextlr,
                  ),
                  //
                  Text(
                    "See all",
                    style: greyTextmd,
                  )
                ],
              ),
              SizedBox(
                height: Get.width * 0.02,
              ),
              // Suggested Event Banner
              SizedBox(
                width: Get.width,
                height: 210,
                child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return EventbannerCard(
                      title: "Coldplay : Music of the Spheres",
                      location: "Gelora Bung Karno Stadium..",
                      date: "November 15 2023",
                      time: "11:00 am",
                      bgBanner: 'assets/images/eventbannerupcomming.png',
                      btntitle: "Individual Event",
                    );
                  },
                ),
              ),
              SizedBox(
                height: Get.width * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tranding Events",
                    style: blackTextlr,
                  ),
                  //
                  Text(
                    "See all",
                    style: greyTextmd,
                  )
                ],
              ),
              SizedBox(
                height: Get.width * 0.02,
              ),
            
        
          ],
        ),
      ),
    ));
  }
}
