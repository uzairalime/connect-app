import 'package:get/get.dart';

class NavbarController extends GetxController {
  var currentIndex = 0.obs;

  void onitemtap(int index) {
    currentIndex.value = index;
  }
}
