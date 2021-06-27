import 'package:camera/camera.dart';

import 'barcode_scanner_status.dart';

class BarcodeScannerController {
  BarcodeScannerStatus status = BarcodeScannerStatus();

  void getAvailableCamera() async {
    try {
      final response = await availableCameras();
      final camera = response.firstWhere(
        (element) => element.lensDirection == CameraLensDirection.back,
      );

      final cameraController = CameraController(
        camera,
        ResolutionPreset.max,
        enableAudio: false,
      );

      status = BarcodeScannerStatus.available(cameraController);
    } catch (e) {
      status = BarcodeScannerStatus.error(e.toString());
    }
  }
}
