//================================ dimenstions ==============================
import 'package:connectapp/utilities/appdimenstios.dart';
import 'package:connectapp/utilities/colors/appcolors.dart';
import 'package:connectapp/utilities/text/textstyle.dart';
import 'package:flutter/material.dart';

class GroupCard extends StatelessWidget {
  final groupName;
  final msg;
  final groupIcon;
  const GroupCard({super.key, this.groupName, this.msg, this.groupIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDm().groupcardw,
      padding:  EdgeInsets.symmetric(horizontal: AppDm().paddingx, vertical: AppDm().paddingx),
      margin:  EdgeInsets.symmetric(horizontal: AppDm().marginsm, vertical: AppDm().marginsm),
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
          borderRadius: BorderRadius.circular(AppDm().radiuslr)), // pahla 12 thi ab 10
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
