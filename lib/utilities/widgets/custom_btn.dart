//================================ Dimensitons ==============================
import 'package:connectapp/utilities/appdimenstios.dart';
import 'package:connectapp/utilities/text/textstyle.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomBtn extends StatelessWidget {
  final name;
  void Function() onTap;
  CustomBtn({super.key, required this.name, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // width: Get.width*0.3,
        padding: EdgeInsets.symmetric(horizontal: AppDm().paddingx, vertical: AppDm().paddinglr),
        margin: EdgeInsets.symmetric(horizontal: AppDm().marginx, vertical: AppDm().marginlr),
        // height: 40,
        decoration: BoxDecoration(
            // gradient: Appcolors().bggradient,
            color: Color.fromRGBO(45, 38, 75, 0.5),
            borderRadius: BorderRadius.circular(AppDm().radiusmd)),
        child: Text(
          "Individual Event",
          style: whiteTextmd,
        ),
      ),
    );
  }
}
