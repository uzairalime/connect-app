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
        width: Get.width*0.21,
        height: Get.height*0.10,

        // padding: EdgeInsets.all(AppDm().paddingsm),
        child: Column(
          children: [
            CircleIconBtn(
              icon: icon,
              onTap: onTap,
            ),
            SizedBox(
              height: Get.height * 0.013,
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
