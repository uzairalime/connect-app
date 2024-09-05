import 'dart:developer';
import 'package:connectapp/utilities/appdimenstios.dart';
import 'package:connectapp/utilities/colors/appcolors.dart';
import 'package:connectapp/utilities/text/textstyle.dart';
import 'package:connectapp/utilities/widgets/circleicon_btn.dart';
import 'package:connectapp/utilities/widgets/icon_card.dart';
import 'package:connectapp/utilities/widgets/msgprofile.dart';
import 'package:connectapp/utilities/widgets/receviermsg.dart';
import 'package:connectapp/utilities/widgets/searchfield.dart';
import 'package:connectapp/utilities/widgets/usermsg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GroupchatScreen extends StatelessWidget {
  const GroupchatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Get.back(),
        ),
        title: Text(
          "Message",
          style: blackTextx,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Msgprofile(
              title: 'Group Name',
              participant: '123',
              img: 'assets/images/info_img.png'),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    UserMsg(
                      msg:
                          "Awesome, thanks for letting me know! Can't wait for my delivery. 🎉",
                      time: '10:10',
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    ReceiverMsg(
                      msg:
                          "No problem at all! I'll be there in about 15 minutes.",
                      time: "10:11",
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
      // buttom bar
      bottomNavigationBar: Container(
        height: 100,
        padding: EdgeInsets.all(AppDm().paddingxx),
        decoration: BoxDecoration(
            color: Appcolors().white,
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                offset: Offset(0, 0),
                blurRadius: 5,
                spreadRadius: 0,
              )
            ],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppDm().radiusxx),
                topRight: Radius.circular(AppDm().radiusxx))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Plus btn
            SizedBox(
              width: Get.width * 0.10,
              child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog.adaptive(
                          content: showcontainer(),
                          alignment: Alignment.bottomCenter,
                        );
                      },
                    );
                    // showModalBottomSheet(
                    //   barrierColor: Colors.transparent,
                      
                    //   context: context, builder: (context) {
                    //   return showcontainer();
                    // },);
                    log("Plus btn");
                  },
                  child: Icon(
                    Icons.add,
                    color: Appcolors().primaryColor,
                  )),
            ),
            // text field
            SizedBox(
              width: Get.width * 0.65,
              height: Get.height * 0.12,
              child: SearchField(
                hintText: "Type a message...",
                msgController: controller,
              ),
            ),
            // SearchfieldCustom(
            //   hintText: "Type a message",
            // ),
            // msg send btn
            SizedBox(
              width: Get.width * 0.10,
              child: CircleIconBtn(
                icon: Icons.mic,
                onTap: () => log("mic icon btn"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

showcontainer() {
  return Container(
    // width: Get.width * 0.7,
    // margin: EdgeInsets.all(30),
    
    // color: Appcolors().white,
    
    child: Column(
      
      mainAxisSize: MainAxisSize.min,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconCard(
                icon: Icons.camera_alt_rounded,
                title: "Camera",
                onTap: () => log("Camera")),
            IconCard(
                icon: Icons.camera_alt_rounded,
                title: "Record",
                onTap: () => log("Record")),
            IconCard(
                icon: Icons.camera_alt_rounded,
                title: "Contact",
                onTap: () => log("Contact")),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconCard(
                icon: Icons.camera_alt_rounded,
                title: "Gallery",
                onTap: () => log("Gallery")),
            IconCard(
                icon: Icons.camera_alt_rounded,
                title: "Location",
                onTap: () => log("Location")),
            IconCard(
                icon: Icons.camera_alt_rounded,
                title: "Document",
                onTap: () => log("Document")),
          ],
        ),
      ],
    ),
  );
}
