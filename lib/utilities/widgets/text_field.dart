import 'package:connectapp/utilities/appdimenstios.dart';
import 'package:connectapp/utilities/colors/appcolors.dart';
import 'package:connectapp/utilities/text/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class TxtField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final textController;
  final w;
  final IconData? icon;
  TextInputType inputType;

   TxtField({super.key,required this.hintText,required this.labelText,required this.textController, this.w,required this.inputType, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText, style: blackTextmd,),
        SizedBox(
          height: Get.height * 0.01,
        ),
        Container(
          width: w?? Get.width,
          height: Get.height * 0.08,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
              horizontal: AppDm().paddingsm, vertical: AppDm().paddingsm),
          // margin: EdgeInsets.symmetric(
          //     horizontal: AppDm().paddinglr, vertical: AppDm().paddingmd),
          
          decoration: BoxDecoration(
            color: Appcolors().white,
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
          child: TextFormField(
            controller: textController,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: greyTextsm,
              suffixIcon: Icon(icon , color: Appcolors().black,),
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
