import 'dart:developer';

import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';

class FileController extends GetxController {
  RxString filePath = ''.obs;

  Future getFile() async {
    // Add your file picker code here
    final result =await FilePicker.platform.pickFiles();
    if (result != null) {
      filePath.value = result.files.single.path!;
      log(filePath.value);
    } else {
      print('No file selected.');
    }

  }
}