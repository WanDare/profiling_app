// import 'package:event_hub/pages/xcore.dart';
// import 'package:event_hub/shared/services/dialogs/service.dart';
// import 'package:get/get.dart';
// import 'package:scan/scan.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';

// class ScanQrController extends GetxController {
//   final repository = Get.find<IScanQrRepository>();
//   late QRViewController controller;
//   final RxBool flash = RxBool(false);
//   final bool back = Get.arguments ?? false;

//   Future<void> onQRViewCreated(QRViewController ctl) async {
//     controller = ctl;
//     if (GetPlatform.isAndroid) {
//       controller.resumeCamera();
//     }
//     controller.scannedDataStream.listen((result) async {
//       await controller.pauseCamera();
//       checkEvent(result.code);
//     });
//   }

//   Future<void> checkEvent(String? id) async {
//     if (id == null) return;
//     DialogService.loading();
//     final result = await repository.checkEvent(id);
//     Get.back();
//     if (result == null) return await controller.resumeCamera();
//     await Get.toNamed(PagesRoute.eventShow(result), arguments: result);
//     await controller.resumeCamera();
//   }

//   Future<void> onMenu() async {
//     controller.pauseCamera();
//     await Get.toNamed(PagesRoute.sidebar);
//     controller.resumeCamera();
//   }

//   void onToggleFlash() {
//     controller.toggleFlash();
//     controller.getFlashStatus().then((value) => flash.value = value ?? false);
//   }

//   @override
//   void onClose() {
//     controller.dispose();
//     super.onClose();
//   }

//   void onJoin() async {
//     controller.pauseCamera();
//     await Get.toNamed(PagesRoute.authenticate);
//     controller.resumeCamera();
//   }

//   void onReadQrCode() async {
//     controller.pauseCamera();
//     final ImagePicker picker = ImagePicker();
//     final image = await picker.pickImage(
//       source: ImageSource.gallery,
//     );
//     if (image == null) return;
//     final qrCodeData = await Scan.parse(image.path);
//     if(qrCodeData == null) {
//       await DialogService.onError('QR Code not found');
//       return controller.resumeCamera();
//     }
//     await checkEvent(qrCodeData);
//     controller.resumeCamera();
//   }
// }
