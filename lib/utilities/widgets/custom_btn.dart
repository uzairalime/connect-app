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
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        // height: 40,
        // alignment: Alignment.center,
        decoration: BoxDecoration(
            // gradient: Appcolors().bggradient,
            color: Color.fromRGBO(45, 38, 75, 0.5),
            borderRadius: BorderRadius.circular(8)),
        child: Text(
          "Individual Event",
          style: whiteTextmd,
        ),
      ),
    );
  }
}
