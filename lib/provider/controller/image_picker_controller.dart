import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController  extends GetxController{
  RxString imagePath = ''.obs;

  Future getImage ()async{
    final ImagePicker imagePicker = ImagePicker();
    final image = await imagePicker.pickImage(source: ImageSource.gallery);
    if(image!= null){
   imagePath.value = image.path.toString();

    }
  }
}