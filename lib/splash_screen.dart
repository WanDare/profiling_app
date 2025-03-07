import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:profiling_app/pages/pages_route.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    loading();
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: CircularProgressIndicator(
        color: Colors.black,
      )),
    );
  }
}

Future<void> loading() async {
  // final storage = Get.put(StorageService());
  // final languageFormat = storage.language.split('_');
  // Get.updateLocale(
  //   Locale(
  //     languageFormat[0],
  //     languageFormat[1],
  //   ),
  // );
  await Future.delayed(const Duration(milliseconds: 500));
  Get.offAllNamed(PageRouter.authenticate);
}
