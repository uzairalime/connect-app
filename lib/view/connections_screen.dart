import 'dart:developer';
import 'package:connectapp/utilities/colors/appcolors.dart';
import 'package:connectapp/utilities/widgets/connection_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ConnectionsScreen extends StatelessWidget {
  const ConnectionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [

              const Text("data"),
              SizedBox(
                height: Get.height * 0.02,
              ),
              // connection Cards List
              Expanded(
                child: GridView.builder(
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
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
              )
            ],
          ),
        ),
      ),
    ));
  }
}
