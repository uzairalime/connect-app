//================================ Dimensitons ==============================
import 'package:connectapp/utilities/appdimenstios.dart';
import 'package:connectapp/utilities/colors/appcolors.dart';
import 'package:connectapp/utilities/text/textstyle.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppBtn extends StatelessWidget {
  final String name;
  void Function() onTap;
  final widthbtn;
  AppBtn({super.key, required this.name, required this.onTap, this.widthbtn});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: widthbtn,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
            horizontal: AppDm().paddingxx, vertical: AppDm().paddinglr),
        margin: EdgeInsets.symmetric(
            horizontal: AppDm().marginsm, vertical: AppDm().marginsm),
        // height: 40,
        decoration: BoxDecoration(
            gradient: Appcolors().primary,
            borderRadius: BorderRadius.circular(AppDm().radiusxx)),
        child: Text(
          name,
          style: whiteTextlr,
          
        ),
      ),
    );
  }
}
