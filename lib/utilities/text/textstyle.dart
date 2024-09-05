import 'package:connectapp/utilities/appdimenstios.dart';
import 'package:connectapp/utilities/colors/appcolors.dart';
import 'package:flutter/material.dart';
// xLarge Black Text
TextStyle blackTextx = TextStyle(
  color: Appcolors().black,
  fontSize: AppDm().fontsizex, //lr
  fontWeight: FontWeight.w500,
);
// Large Black Text
TextStyle blackTextlr = TextStyle(
  color: Appcolors().black,
  fontSize: AppDm().fontsizelr, //lr
  fontWeight: FontWeight.w500,
);
// Medium Black Text
TextStyle blackTextmd = TextStyle(
  color: Appcolors().black,
  fontSize: AppDm().fontsizemd, // lr pahla 15
  fontWeight: FontWeight.w500,
);
// Small Black Text
TextStyle blackTextsm = TextStyle( //sm
  color: Appcolors().black,
  fontSize: AppDm().fontsizesm,
  fontWeight: FontWeight.w400,
);
// Large White Text
TextStyle whiteTextlr = TextStyle(
  color: Appcolors().white,
  fontSize: AppDm().fontsizelr, //lr
  fontWeight: FontWeight.w600,
);
// Medium White Text
TextStyle whiteTextmd = TextStyle( // sm pahla 13
  color: Appcolors().white,
  fontSize: AppDm().fontsizesm,
  fontWeight: FontWeight.w600,
);
// Small White Text
TextStyle whiteTextsm = TextStyle( //sm pahla 13
  color: Appcolors().white,
  fontSize: AppDm().fontsizesm,
  fontWeight: FontWeight.w400,
);
TextStyle greyTextmd = TextStyle( // md
  color: Appcolors().grey,
  fontSize: AppDm().fontsizemd,
  fontWeight: FontWeight.w400,
);

TextStyle greyTextsm = TextStyle( //sm
  color: Appcolors().grey,
  fontSize: AppDm().fontsizesm,
  fontWeight: FontWeight.w300,
);