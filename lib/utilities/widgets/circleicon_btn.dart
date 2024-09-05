import 'package:connectapp/utilities/appdimenstios.dart';
import 'package:connectapp/utilities/colors/appcolors.dart';
import 'package:flutter/material.dart';

class CircleIconBtn extends StatelessWidget {
  final IconData icon;
  final Function() onTap;
  const CircleIconBtn({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(AppDm().paddinglr),
        decoration: BoxDecoration(
          // color: Appcolors().primaryColor,
          borderRadius: BorderRadius.circular(50),
          gradient: Appcolors().primary,
        ),
        child: Icon(
          icon,
          color: Appcolors().white,
        ),
      ),
    );
  }
}
