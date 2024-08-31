// ignore_for_file: public_member_api_docs, sort_constructors_first
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
        margin: EdgeInsets.only(right: 10),
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(title, style: blackTextmd,),
      ),
    );
  }
}
