import 'package:connectapp/utilities/appdimenstios.dart';
import 'package:connectapp/utilities/colors/appcolors.dart';
import 'package:connectapp/utilities/text/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserMsg extends StatelessWidget {
  final String msg;
  final time;
  IconData? icon;
   UserMsg({super.key, required this.msg, this.time, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.8,
      padding: EdgeInsets.all(AppDm().paddingx),
      decoration: BoxDecoration(
          color: Appcolors().primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppDm().radiusx),
            bottomLeft: Radius.circular(AppDm().radiusx),
            topRight: Radius.circular(AppDm().radiusx),
          )),
      child: Column(
        children: [
          // msg text
          Text(
            "Awesome, thanks for letting me know! Can't wait for my delivery. 🎉",
            style: whiteTextlr.copyWith(fontWeight: FontWeight.w400),
          ),
          // time and icon
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                time,
                style: whiteTextlr.copyWith(fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                width: 8,
              ),
              Icon(
                icon ?? Icons.check,
                color: Colors.white,
                size: 12,
              )
            ],
          )
        ],
      ),
    );
  }
}
