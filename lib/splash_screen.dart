import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profiling_app/pages/pages_route.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    loading();
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 4, 8, 53),
      body: Center(
          child: CircularProgressIndicator(
        color: Colors.orange,
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
