import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImgController extends GetxController {

  RxString imgPath = ''.obs;

  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      imgPath.value = image.path.toString();
    } else {
      print('No image selected.');
    }
  }
  Future getCamera() async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      imgPath.value = image.path.toString();
    } else {
      print('No image selected.');
    }
  }

  void getFile() {}
} 