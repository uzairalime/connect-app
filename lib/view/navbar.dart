import 'package:connectapp/controller/navbar_controller.dart';
import 'package:connectapp/utilities/appdimenstios.dart';
import 'package:connectapp/utilities/colors/appcolors.dart';
import 'package:connectapp/view/connections_screen.dart';
import 'package:connectapp/view/event_screen.dart';
import 'package:connectapp/view/groupchat_screen.dart';
import 'package:connectapp/view/home_screen.dart';
import 'package:connectapp/view/information_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    NavbarController controller = Get.put(NavbarController());
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.currentIndex.value,
          children: const [
            HomeScreen(),
            ConnectionsScreen(),
            GroupchatScreen(),
            InformationScreen(),
            EventScreen(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        // width: Get.width*0.95,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppDm().radiusxx),
            topRight: Radius.circular(AppDm().radiusxx),
          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              offset: Offset(0, 0),
              blurRadius: 5,
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => InkWell(
                  onTap: () => controller.currentIndex.value = 0,
                  child: SvgPicture.asset(
                    'assets/icons/home_icon.svg',
                    color: controller.currentIndex.value == 0
                        ? Appcolors().primaryColor
                        : Appcolors().grey,
                  )),
            ),
            Obx(
              () => InkWell(
                  onTap: () => controller.currentIndex.value = 1,
                  child: SvgPicture.asset(
                    'assets/icons/user_icon.svg',
                    color: controller.currentIndex.value == 1
                        ? Appcolors().primaryColor
                        : Appcolors().grey,
                  )),
            ),
            // 3rd icon
            Obx(
              () => InkWell(
                  onTap: () => Get.to(const GroupchatScreen()),
                  child: SvgPicture.asset(
                    'assets/icons/chat_icon.svg',
                    color: controller.currentIndex.value == 2
                        ? Appcolors().primaryColor
                        : Appcolors().grey,
                  )),
            ),
            Obx(
              () => InkWell(
                  onTap: () => controller.currentIndex.value = 3,
                  child: SvgPicture.asset(
                    'assets/icons/setting_icon.svg',
                    color: controller.currentIndex.value == 3
                        ? Appcolors().primaryColor
                        : Appcolors().grey,
                  )),
            ),
            Obx(
              () => InkWell(
                  onTap: () => controller.currentIndex.value = 4,
                  child: SvgPicture.asset(
                    'assets/icons/option_icon.svg',
                    color: controller.currentIndex.value == 4
                        ? Appcolors().primaryColor
                        : Appcolors().grey,
                  )),
            )
          ],
        ),
      ),

      
    );
  }
}
