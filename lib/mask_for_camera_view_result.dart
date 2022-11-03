import 'dart:typed_data';

class MaskForCameraViewResult {
  MaskForCameraViewResult(
      {this.croppedImage,
      this.firstPartImage,
      this.secondPartImage,
      this.fullImage});
  Uint8List? croppedImage;
  Uint8List? firstPartImage;
  Uint8List? secondPartImage;
  Uint8List? fullImage;
}
