import 'dart:async';
import 'dart:developer';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_native_contact_picker/flutter_native_contact_picker.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class MsgController extends GetxController{
  RxString imgPath = ''.obs; // Image controller
  RxString videoPath = ''.obs; // Video controller
  RxString filePath = ''.obs; // Get file
  final FlutterContactPicker _flutterContactPicker = FlutterContactPicker(); // get contact
  Rx<Contact?> selectedContact = Rx<Contact?>(null); // get contact
  RxString contactName = "".obs; // get contact
  RxString contactNumber = "".obs; // get contact
  RxList msgList = [].obs; // get message list

  // field msg controller
  Future<void> addMessage(String msg) async {
    msgList.add(msg);
    log(msg);
  }
  // get image controller
  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      imgPath.value = image.path.toString();
      msgList.add(imgPath.value);
      log(msgList.isEmpty.toString());
    } else {
      log('No image selected.');
    }
  }
  // get camera controller
  Future getCamera() async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      imgPath.value = image.path.toString();
      msgList.add(imgPath.value);
    } else {
      print('No image selected.');
    }
  }
  // get file from user controller
  Future getFile() async {
    // Add your file picker code here
    final result =await FilePicker.platform.pickFiles();
    if (result != null) {
      filePath.value = result.files.single.path!;
      msgList.add(filePath.value);
      log(filePath.value);
    } else {
      log('No file selected.');
    }
  }
  // get contact controller
  Future<void> getContact() async {
    try {
      log("Contact selection started");
      Contact? pickedContact = await _flutterContactPicker.selectContact();
      if (pickedContact != null) {
        selectedContact.value = pickedContact;
        contactName.value = pickedContact.fullName ?? "No Name";
        contactNumber.value = pickedContact.phoneNumbers.toString();
        final pickContact = {
          "name": contactName.value,
          "number": contactNumber.value
        };
        msgList.add( pickContact);
        log("Contact Name: ${contactName.value}");
        log("Contact Number: ${contactNumber.value}");
      } else {
        log("No contact selected");
      }
    } catch (e) {
      log("Failed to pick contact: $e");
    }
  }
  // get video record 
  Future getRecord() async {
    final ImagePicker _picker = ImagePicker();
    final video = await _picker.pickVideo(source: ImageSource.gallery);
    if (video != null) {
      videoPath.value = video.path.toString();
      
      msgList.add(videoPath.value);
      log(videoPath.value);
    } else {
      print('No image selected.');
    }
  }
  
  
}