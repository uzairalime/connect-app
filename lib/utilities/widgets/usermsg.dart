import 'dart:io';

import 'package:connectapp/utilities/appdimenstios.dart';
import 'package:connectapp/utilities/colors/appcolors.dart';
import 'package:connectapp/utilities/text/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// text message widget
// ignore: must_be_immutable
class UserMsg extends StatelessWidget {
  final String msg;
  final time;
  IconData? icon;
  UserMsg({super.key, required this.msg, this.time, this.icon});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.end,
      verticalDirection: VerticalDirection.down,
      children: [
        Container(
          margin: EdgeInsets.only(
              bottom: AppDm().paddinglr, right: AppDm().marginlr),
          padding: EdgeInsets.all(AppDm().paddingx),
          decoration: BoxDecoration(
              color: Appcolors().primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppDm().radiusx),
                bottomLeft: Radius.circular(AppDm().radiusx),
                topRight: Radius.circular(AppDm().radiusx),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // msg text
              Text(
                msg,
                style: whiteTextlr.copyWith(fontWeight: FontWeight.w400),
              ),
              // time and icon
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text(
                    time,
                    style: whiteTextmd.copyWith(fontWeight: FontWeight.w400),
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
        ),
      ],
    );
  }
}

// image message widget
class UserImgMsg extends StatelessWidget {
  final imgPath;
  const UserImgMsg({super.key, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(AppDm().marginlr),
      width: Get.width / 0.8,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(AppDm().radiusx),
          child: Image.file(
            File(imgPath),
            fit: BoxFit.cover,
            // width: Get.width / 0.8,
            height: Get.width / 1.5,
          )),
    );
  }
}

// Contact message widget
class ContactMsg extends StatelessWidget {
  final String name;
  final String number;
  const ContactMsg({super.key, required this.name, required this.number});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.end,
      children: [
        Container(
          margin: EdgeInsets.only(
              bottom: AppDm().paddinglr, right: AppDm().marginlr),
          padding: EdgeInsets.all(AppDm().paddingx),
          decoration: BoxDecoration(
              color: Appcolors().primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppDm().radiuslr),
                bottomLeft: Radius.circular(AppDm().radiuslr),
                topRight: Radius.circular(AppDm().radiuslr),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // name contact
              Text(
                name,
                style: whiteTextlr.copyWith(fontWeight: FontWeight.w400),
              ),
              // number contact
              Text(
                number,
                style: whiteTextlr.copyWith(fontWeight: FontWeight.w400),
              ),
            ],
          ),
        )
      ],
    );
  }
}

// file message widget
