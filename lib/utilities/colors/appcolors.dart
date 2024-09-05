
import 'package:flutter/material.dart';

class Appcolors {
  Gradient primary = const LinearGradient(
    colors: [
      Color.fromRGBO(136, 139, 244, 1),
      Color.fromRGBO(81, 81, 198, 1),
    ],
  );
  Gradient bggradient = const LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.topRight,
    colors: [
      Color.fromRGBO(45, 38, 75, 1),
      Color.fromRGBO(255, 255, 255, 1),
    ],
  );
  Color secondary = const Color.fromRGBO(81, 81, 198, 0.2);
  Color white = Colors.white;
  Color black = const Color.fromRGBO(80, 80, 80, 1);
  Color grey = const Color.fromRGBO(168, 168, 168, 1);
  Color lightgrey = const Color.fromRGBO(242, 242, 242, 1);
  Color primaryColor = const Color.fromRGBO(81, 81, 198, 1);
  
}

