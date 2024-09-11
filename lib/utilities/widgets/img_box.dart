// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImgBox extends StatelessWidget {
  final img;
  double? w;
  double? h;
  ImgBox({
    Key? key,
    this.w,
    this.h,required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:  w,
      height: h,
      
      child: Image.asset(img, fit: BoxFit.contain,),
    );
  }
}
