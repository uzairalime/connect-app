import 'package:connectapp/utilities/appdimenstios.dart';
import 'package:connectapp/utilities/colors/appcolors.dart';
import 'package:connectapp/utilities/text/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchField extends StatelessWidget {
  final hintText;
  final msgController;
  final onSubmit;
  const SearchField({super.key, this.hintText, this.msgController, this.onSubmit});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      alignment: Alignment.center ,
      padding:  EdgeInsets.symmetric(horizontal: AppDm().paddinglr, vertical: AppDm().paddingmd),
      decoration: BoxDecoration(
        color: Appcolors().lightgrey,
        borderRadius: BorderRadius.circular(AppDm().radiuslr),
      ),
      child: TextFormField(
        controller: msgController,
        onFieldSubmitted: onSubmit,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: greyTextmd,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
