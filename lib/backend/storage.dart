import 'package:image_picker/image_picker.dart';

class Storage
{
  pickImage() {
    ImagePicker imagePicker = new ImagePicker();
    var getImage =imagePicker.pickImage(source:ImageSource.gallery);
    

  }
}
