import 'package:camera/camera.dart';

class BarcodeScannerStatus {
  final bool isCameraAvaliable;
  final String error;
  final String barcode;

  CameraController? cameraController;

  // constructor
  BarcodeScannerStatus({
    this.isCameraAvaliable = false,
    this.cameraController,
    this.error = "",
    this.barcode = "",
  });

  factory BarcodeScannerStatus.available(CameraController controller) =>
      BarcodeScannerStatus(
        isCameraAvaliable: true,
        cameraController: controller,
      );

  bool get showCamera => isCameraAvaliable && error.isEmpty;

  bool get hasError => error.isNotEmpty;

  bool get hasBarcode => barcode.isNotEmpty;
}
