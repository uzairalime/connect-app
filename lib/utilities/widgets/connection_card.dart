import 'package:connectapp/utilities/colors/appcolors.dart';
import 'package:connectapp/utilities/text/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ConnectionCard extends StatelessWidget {
  final profileImg;
  final title;
  final icon;
  const ConnectionCard({super.key, this.profileImg, this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.35,
      height: Get.height * 0.22,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              offset: Offset(0, 0),
              blurRadius: 5,
              spreadRadius: 0,
            )
          ],
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // group image
          CircleAvatar(
            radius: 23,
            backgroundImage: AssetImage(profileImg),
          ),
          const SizedBox(
            height: 10,
          ),
          // Person Name
          Text(title, style: blackTextmd),
          const SizedBox(
            height: 10,
          ),
          // msg Icon
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: Appcolors().secondary,
              borderRadius: BorderRadius.circular(50),
            ),
            child: SvgPicture.asset(
              icon,
            ),
          )
        ],
      ),
    );
  }
}
