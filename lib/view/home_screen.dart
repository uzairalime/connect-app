import 'dart:developer';
import 'package:connectapp/utilities/appdimenstios.dart';
import 'package:connectapp/utilities/colors/appcolors.dart';
import 'package:connectapp/utilities/text/textstyle.dart';
import 'package:connectapp/utilities/widgets/eventbanner_card.dart';
import 'package:connectapp/utilities/widgets/group_card.dart';
import 'package:connectapp/utilities/widgets/heading_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // Menu_nav btn
          leading: GestureDetector(onTap: () => log("Menu_nav btn"),child: SvgPicture.asset('assets/icons/menu_icon.svg', width: 20,)),
          actions: [
            // Notification btn
            GestureDetector(onTap: () => log("notification btn"),child: SvgPicture.asset('assets/icons/bell_icon.svg', width: 30,)),
            const SizedBox(width: 15,),
            // Profile Image
            GestureDetector(
              onTap: () => log("Profile Image"),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Appcolors().secondary,
                foregroundImage: const AssetImage("assets/images/profile_ava.png",),
              ),
            ),
            const SizedBox(width: 15,),
          ],
        ),
        body: Padding(
          padding:  EdgeInsets.all(AppDm().paddinglr),
          child: SingleChildScrollView(
            child: Column(
              children: [
              // Upcomming Events text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Upcomming Events",
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
              // Up comming Event Banner
              SizedBox(
                width: Get.width,
                height: AppDm().eventbannercardh,
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
                height: Get.height*0.02,
              ),
              // Suggested Events text
              HeadingTile(title: "Suggested Events", onTap: ()=> log("Suggested Events")),
              SizedBox(
                height: Get.width * 0.02,
              ),
              // Suggested Event Banner
              SizedBox(
                width: Get.width,
                height: AppDm().eventbannercardh,
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
                      bgBanner: 'assets/images/eventbanner.png',
                      btntitle: "Individual Event",
                    );
                  },
                ),
              ),
              SizedBox(
                height: Get.width * 0.02,
              ),
              // Active Groups text
              HeadingTile(title: "Active Group", onTap: ()=> log("Active Group")),
              SizedBox(
                height: Get.width * 0.02,
              ),
              // Active Group Card
              SizedBox(
                width: Get.width,
                height: AppDm().groupcardh,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                  return const GroupCard(
                  groupIcon: 'assets/images/profile_img.png',
                  groupName: "Group Name",
                  msg: "5 new messages",
                );
                },),
              ),
              SizedBox(
                height: Get.width * 0.02,
              ),
              // Suggested Groups text
              HeadingTile(title: "Suggested Group", onTap: ()=> log("Suggested Group")),
              SizedBox(
                height: Get.width * 0.02,
              ),
              // Suggested Group Card
              SizedBox(
                width: Get.width,
                height: AppDm().groupcardh,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                  return const GroupCard(
                  groupIcon: 'assets/images/profile_img.png',
                  groupName: "Group Name",
                  msg: "5 new messages",
                );
                },),
              ),
              
            ],
          ),
        ),
      )),
    );
  }
}
