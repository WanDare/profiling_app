// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:profiling_app/core/styles/size.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';

// class ScanQrView extends GetView<ScanQrController> {
//   const ScanQrView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Positioned.fill(
//             child: QRView(
//               key: GlobalKey<ScaffoldState>(),
//               onQRViewCreated: controller.onQRViewCreated,
//               overlay: QrScannerOverlayShape(
//                 borderColor: Get.theme.colorScheme.primary,
//                 overlayColor: Get.theme.primaryColor.withOpacity(0.6),
//                 borderRadius: kRadius,
//                 borderLength: 30,
//                 borderWidth: 10,
//               ),
//             ),
//           ),
//           Positioned.fill(
//             child: Padding(
//               padding: const EdgeInsets.all(0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   KhanSlaWidget(
//                     background: Colors.transparent,
//                     leading: controller.back
//                         ? IconButton(
//                             onPressed: Get.back,
//                             icon: const Icon(
//                               Icons.arrow_back_ios,
//                               color: Colors.white,
//                             ),
//                           )
//                         : IconButton(
//                             onPressed: controller.onMenu,
//                             icon: const Icon(
//                               Icons.menu,
//                               color: Colors.white,
//                             ),
//                           ),
//                   ),
//                   Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: <Widget> [
//                           FloatingActionButton(
//                             heroTag: 'flash',
//                             key: const Key('flash'),
//                             onPressed: controller.onToggleFlash,
//                             child: Obx(() {
//                               if (controller.flash.isFalse) {
//                                 return const Icon(Icons.flash_off);
//                               }
//                               return const Icon(Icons.flash_on);
//                             }),
//                           ),
//                           const SizedBox(width: kSpace * 2),
//                           FloatingActionButton(
//                             heroTag: 'toggle',
//                             key: const Key('toggle'),
//                             onPressed: controller.onReadQrCode,
//                             child: const Icon(Icons.qr_code_2_rounded),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(height: kSpace * 1),
//                       const Text(
//                         "ស្កេន QR Code លើធៀបការ",
//                       ),
//                       const SizedBox(height: kSpace),
//                       controller.back
//                           ? const SizedBox(height: kSpace * 5)
//                           : Column(
//                               children: [
//                                 const Text(
//                                   "ឬ",
//                                 ),
//                                 const SizedBox(height: kSpace),
//                                 Padding(
//                                   padding: const EdgeInsets.symmetric(
//                                     horizontal: kPadding,
//                                   ),
//                                   child: ButtonWidget(
//                                     onPressed: controller.onJoin,
//                                     text: 'ចូល WeddingHub',
//                                   ),
//                                 ),
//                                 const SizedBox(height: kSpace * 2),
//                               ],
//                             ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
