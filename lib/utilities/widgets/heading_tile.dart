import 'package:connectapp/utilities/text/textstyle.dart';
import 'package:flutter/material.dart';

class HeadingTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const HeadingTile({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: blackTextlr,
        ),
        //
        GestureDetector(
          onTap: onTap,
          child: Text(
            "See All",
            style: greyTextmd,
          ),
        )
      ],
    );
  }
}
