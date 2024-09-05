//================================ Dimenstons ==============================
import 'package:connectapp/utilities/appdimenstios.dart';
import 'package:connectapp/utilities/widgets/card_btn.dart';
import 'package:flutter/material.dart';
import 'package:connectapp/utilities/text/textstyle.dart';
import 'package:connectapp/utilities/widgets/custom_btn.dart';
import 'package:connectapp/utilities/widgets/customtileblack.dart';
import 'package:get/get.dart';

class EventCard extends StatelessWidget {
  final img;
  final title;
  final location;
  final date;
  final onTap;
  EventCard({
    Key? key,
    required this.onTap,required this.img,required this.title,required this.location,required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDm().eventcardw,
      margin: EdgeInsets.symmetric(horizontal: AppDm().marginsm, vertical: AppDm().marginsm),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppDm().radiuslr),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            offset: Offset(0, 0),
            blurRadius: 5,
            spreadRadius: 0,
          )
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: AppDm().marginlr, vertical: AppDm().marginlr),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(img),
          Text(
            title,
            style: blackTextmd,
          ),
          CustomTileblack(
              title: location,
              icon: "assets/icons/location_bl_icon.svg"),
          CustomTileblack(
            title: date, icon: "assets/icons/calender_icon.svg"),
          SizedBox(height: Get.height*0.01,),
          CardBtn(name: "Join", onTap: onTap)
        ],
      ),
    );
  }
}
