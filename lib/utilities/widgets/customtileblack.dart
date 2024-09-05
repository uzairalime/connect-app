//================================ Dimensitons ==============================

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:connectapp/utilities/text/textstyle.dart';

class CustomTileblack extends StatelessWidget {
  final icon ;
  final title;
   CustomTileblack({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon),
        const SizedBox(width: 8),
        Text(
          title,
          style: blackTextmd.copyWith(fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
