import 'package:connectapp/utilities/colors/appcolors.dart';
import 'package:connectapp/utilities/text/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GroupCard extends StatelessWidget {
  final groupName;
  final msg;
  final groupIcon;
  const GroupCard({super.key, this.groupName, this.msg, this.groupIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.46,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // group image
          CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage(groupIcon),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // group name
              Text(
                groupName,
                style: blackTextmd,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // active members
                  CircleAvatar(
                    radius: 4,
                    backgroundColor: Appcolors().secondary,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  // msg count
                  Text(
                    msg,
                    style: greyTextsm,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
