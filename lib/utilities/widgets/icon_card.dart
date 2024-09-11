import 'package:connectapp/utilities/appdimenstios.dart';
import 'package:connectapp/utilities/text/textstyle.dart';
import 'package:connectapp/utilities/widgets/circleicon_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IconCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function() onTap;
  const IconCard({super.key, required this.icon, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: Get.width*0.23,
        height: Get.height*0.15,
        padding: EdgeInsets.all(AppDm().paddingx),
        child: Column(
          children: [
            CircleIconBtn(
              icon: icon,
              onTap: onTap,
            ),
            SizedBox(
              height: Get.height * 0.015,
            ),
            Text(
              title,
              style: blackTextmd,
            ),
          ],
        ),
      ),
    );
  }
}
