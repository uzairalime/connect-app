//================================ Dimmentstion ==============================

import 'package:connectapp/utilities/appdimenstios.dart';
import 'package:flutter/material.dart';
import 'package:connectapp/utilities/text/textstyle.dart';

class ColorboxBtn extends StatelessWidget {
  final title;
  final VoidCallback onTap;
  final Color boxColor;
   ColorboxBtn({
    Key? key,
    required this.onTap,
    required this.boxColor, this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: AppDm().marginlr),
        padding:  EdgeInsets.symmetric(horizontal: AppDm().paddingxx, vertical: AppDm().paddinglr),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(AppDm().radiusx),
        ),
        child: Text(title, style: blackTextmd,),
      ),
    );
  }
}
