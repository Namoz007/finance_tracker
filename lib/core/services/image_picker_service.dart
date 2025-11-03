import '../../src.dart';

@lazySingleton
class ImagePickerService{
  late final ImagePicker _picker;

  ImagePickerService() : _picker = ImagePicker();

  // ==================== IMAGE PICKERS ====================

  Future<XFile?> pickImageFromGallery() async {
    return await _picker.pickImage(source: ImageSource.gallery);
  }

  Future<XFile?> pickImageFromCamera() async {
    return await _picker.pickImage(source: ImageSource.camera);
  }

  // ==================== VIDEO PICKERS ====================

  Future<XFile?> pickVideoFromGallery() async {
    return await _picker.pickVideo(source: ImageSource.gallery);
  }

  Future<XFile?> pickVideoFromCamera() async {
    return await _picker.pickVideo(source: ImageSource.camera);
  }

  // ==================== LOST DATA (ANDROID) ====================

  Future<LostDataResponse> retrieveLostData() async {
    return await _picker.retrieveLostData();
  }


}