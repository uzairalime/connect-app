//================================ Dimensitons ==============================
import 'package:connectapp/utilities/appdimenstios.dart';
import 'package:connectapp/utilities/colors/appcolors.dart';
import 'package:connectapp/utilities/text/textstyle.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardBtn extends StatelessWidget {
  final String name;
  void Function() onTap;
  CardBtn({super.key, required this.name, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: AppDm().paddingxx, vertical: AppDm().paddinglr),
        margin: EdgeInsets.symmetric(
            horizontal: AppDm().marginsm, vertical: AppDm().marginsm),
        // height: 40,
        decoration: BoxDecoration(
            gradient: Appcolors().primary,
            borderRadius: BorderRadius.circular(AppDm().radiusmd)),
        child: Text(
          name,
          style: whiteTextmd,
        ),
      ),
    );
  }
}
