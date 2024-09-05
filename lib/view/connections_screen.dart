import 'dart:developer';
import 'package:connectapp/utilities/appdimenstios.dart';
import 'package:connectapp/utilities/colors/appcolors.dart';
import 'package:connectapp/utilities/text/textstyle.dart';
import 'package:connectapp/utilities/widgets/connection_card.dart';
import 'package:connectapp/utilities/widgets/searchfieldcustom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ConnectionsScreen extends StatelessWidget {
  const ConnectionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 2,
      child: Scaffold(
        // appBar
        appBar: AppBar(
          // Menu_nav btn
          leading: GestureDetector(
              onTap: () => log("Menu_nav btn"),
              child: SvgPicture.asset(
                'assets/icons/menu_icon.svg',
                width: 20,
              )),
          // notification and profile
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
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(AppDm().paddinglr),
            child: Column(
              children: [
                // app bar btns
                Container(
                  height: Get.height * 0.08,
                  width: Get.width * 0.80,
                  decoration: BoxDecoration(
                    color: Appcolors().secondary,
                    borderRadius: BorderRadius.circular(AppDm().radiusxx),
                  ),
                  child: TabBar(
                    dividerColor: Colors.transparent,
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelStyle: whiteTextmd,
                    unselectedLabelStyle:
                        whiteTextmd.copyWith(color: Appcolors().primaryColor),
                    indicator: BoxDecoration(
                      gradient: Appcolors().primary,
                      borderRadius: BorderRadius.circular(AppDm().radiusxx),
                    ),
                    tabs: const [
                      Tab(
                        text: "New Connections",
                      ),
                      Tab(
                        text: "My Connections",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                // bottom screens
                Expanded(
                  child: TabBarView(
                    children: [
                      newConnection(),
                      myConnection(),
                    ],
                  ),
                ),
                // newConnection(),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

// New Connection Screen
newConnection() {
  return // connection Cards List
      Column(
        children: [
          Container(
            width: Get.width * 0.90,
            child: SearchfieldCustom(
              hintText: "Search",
              
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
            return const ConnectionCard(
              profileImg: 'assets/images/profile_img.png',
              title: "Person Name",
              icon: 'assets/icons/msg_icon.svg',
            );
                },
              ),
          ),
        ],
      );
}

// My Connection Screen
myConnection() {
  return // connection Cards List
      GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
    ),
    itemCount: 10,
    itemBuilder: (context, index) {
      return const ConnectionCard(
        profileImg: 'assets/images/profile_img.png',
        title: "Person Name",
        icon: 'assets/icons/msg_icon.svg',
      );
    },
  );
}
