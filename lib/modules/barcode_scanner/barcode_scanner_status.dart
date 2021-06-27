import 'package:camera/camera.dart';

class BarcodeScannerStatus {
  final bool isCameraAvaliable;
  final String error;
  final String barcode;

  CameraController? cameraController;

  // constructor
  BarcodeScannerStatus({
    required this.isCameraAvaliable,
    this.cameraController,
    this.error = "",
    this.barcode = "",
  });

  bool get showCamera => isCameraAvaliable && error.isEmpty;

  bool get hasError => error.isNotEmpty;

  bool get hasBarcode => barcode.isNotEmpty;
}
