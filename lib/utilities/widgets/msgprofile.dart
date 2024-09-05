import 'package:connectapp/utilities/colors/appcolors.dart';
import 'package:connectapp/utilities/text/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Msgprofile extends StatelessWidget {
  final String title;
  final String participant;
  final img;
  const Msgprofile(
      {super.key,
      required this.title,
      required this.participant,
      required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.12,
      alignment: Alignment.center,
      color: Appcolors().white,
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(img),
        ),
        title: Text(
          title,
          style: blackTextlr,
        ),
        subtitle: Text(
          "$participant Participant",
          style: greyTextmd,
        ),
      ),
    );
  }
}
