import 'package:connectapp/utilities/appdimenstios.dart';
import 'package:connectapp/utilities/colors/appcolors.dart';
import 'package:connectapp/utilities/text/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ReceiverMsg extends StatelessWidget {
  final String msg;
  final time;
  IconData? icon;
   ReceiverMsg({super.key, required this.msg, this.time, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.8,
      padding: EdgeInsets.all(AppDm().paddingx),
      decoration: BoxDecoration(
          color: Appcolors().white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppDm().radiusx),
            bottomRight: Radius.circular(AppDm().radiusx),
            topRight: Radius.circular(AppDm().radiusx),
          ),
          boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(185, 181, 181, 0.247),
            offset: Offset(0, 0),
            blurRadius: 10,
            spreadRadius: 0,
          )
        ],
        ),
      child: Column(
        children: [
          // msg text
          Text(
            msg,
            style: blackTextlr.copyWith(fontWeight: FontWeight.w400),
          ),
          // time and icon
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                time,
                style: blackTextlr.copyWith(fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                width: 8,
              ),
              Icon(
                icon ?? Icons.check,
                color: Appcolors().black,
                size: 12,
              )
            ],
          )
        ],
      ),
    );
  }
}
