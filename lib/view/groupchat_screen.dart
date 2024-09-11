import 'dart:developer';
import 'package:connectapp/controller/msg_controller.dart';
import 'package:connectapp/utilities/appdimenstios.dart';
import 'package:connectapp/utilities/colors/appcolors.dart';
import 'package:connectapp/utilities/text/textstyle.dart';
import 'package:connectapp/utilities/widgets/circleicon_btn.dart';
import 'package:connectapp/utilities/widgets/icon_card.dart';
import 'package:connectapp/utilities/widgets/msgprofile.dart';
import 'package:connectapp/utilities/widgets/searchfield.dart';
import 'package:connectapp/utilities/widgets/usermsg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GroupchatScreen extends StatelessWidget {
  const GroupchatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    MsgController msgController = Get.put(MsgController());
    // time
    DateTime now = DateTime.now();
    String time =
        "${now.hour}:${now.minute > 9 ? now.minute : '0${now.minute}'},";
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
            child: Obx(() => ListView.builder(
                  itemCount: msgController.msgList.length,
                  itemBuilder: (context, index) {
                    var msgItem = msgController.msgList[index];
                    if (msgItem is String) {
                      if (msgItem.endsWith('.png')) {
                        return UserImgMsg(
                          imgPath: msgItem,
                        );
                      }else if (msgItem.endsWith('.jpg', )) {
                       return UserImgMsg(
                          imgPath: msgItem,
                        );
                      }else if (msgItem.endsWith('.pdf', )) {
                        return FileMsgUser(
                          name: msgItem.split('/').last,

                        );
                      }
                      else if (msgItem.endsWith('.mp4', )) {
                        return VideoMsgUser(
                          videoPath: msgItem,
                        );
                      }
                       else {
                        return UserMsg(
                          msg: msgItem,
                          time: time,
                        );
                      }
                    } else if (msgItem is Map) {
                      return ContactMsg(
                          name: msgItem['name'], number: msgItem['number']);
                    } else {
                      return Container();
                    }
                  },
                )),
          ),
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
                onSubmit: (value) {
                  msgController.addMessage(value);
                  controller.clear();
                },
              ),
            ),
            // msg send btn
            SizedBox(
              // width: Get.width * 0.10,
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
  MsgController msgController = Get.put(MsgController());
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Camera
          IconCard(
              icon: Icons.camera_alt_rounded,
              title: "Camera",
              onTap: () {
                msgController.getCamera();
                Get.back();
                log("Camera");
              }
          ),
          // record
          IconCard(
              icon: Icons.camera_alt_rounded,
              title: "Record",
              onTap: () {
                msgController.getRecord();
                Get.back();
                log("Record");
              }
          ),
          // Contact
          IconCard(
              icon: Icons.camera_alt_rounded,
              title: "Contact",
              onTap: () {
                msgController.getContact();
                Get.back();
              }
          ),
        ],
      ),
      // Gallery Location Document
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Gallery
          IconCard(
              icon: Icons.camera_alt_rounded,
              title: "Gallery",
              onTap: () {
                msgController.getImage();
                log(msgController.imgPath.value);
                Get.back();
                log("Gallery");
              }
          ),
          // Location
          IconCard(
              icon: Icons.camera_alt_rounded,
              title: "Location",
              onTap: () => log("Location")
          ),
          // Document
          IconCard(
              icon: Icons.camera_alt_rounded,
              title: "Document",
              onTap: () {
                // filecon
                msgController.getFile();
                Get.back();
              }
          ),
        ],
      ),
    ],
  );
}
