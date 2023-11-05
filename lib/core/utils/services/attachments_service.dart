import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';
class AttachmentsService {
  final ImagePicker _picker;
  AttachmentsService(this._picker);
  // AttachmentsService();
  Future<XFile?>? getGalleryImage() async {
    return await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 25,
    );
  }

  //
  // Future<XFile?>? getCameraImage() async {
  //   return await _picker.pickImage(
  //     source: ImageSource.camera,
  //   );
  // }
  //
  Future<List<XFile>?> getMultiImages() async{
    final images = await _picker.pickMultiImage(
    );
    return images;
  }

  Future<FilePickerResult?> getFile() async {
    return await FilePicker.platform.pickFiles(allowMultiple: true);
  }
}
