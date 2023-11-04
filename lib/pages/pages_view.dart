import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:profiling_app/pages/home/home_view.dart';
import 'package:profiling_app/pages/profile/profile_view.dart';
import 'package:profiling_app/pages/scan_qr/scan_qr_view.dart';
import 'pages_controller.dart';

class PagesView extends GetView<GetxController> {
  const PagesView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PagesController());
    return Scaffold(
      body: Stack(
        children: [
          Obx(() {
            final currentPage = controller.currentIndex.value;
            return currentPage == 0
                ? const HomeView()
                : currentPage == 1
                    ? const ScanQrView()
                    : currentPage == 2
                        ? const ProfileView()
                        : const SizedBox();
          }),
          Positioned(
            left: 10,
            right: 10,
            bottom: 5,
            child: Obx(() {
              return ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: BottomNavigationBar(
                  backgroundColor: Colors.orange,
                  iconSize: 18,
                  selectedIconTheme: const IconThemeData(size: 22),
                  selectedItemColor: const Color.fromARGB(255, 4, 8, 53),
                  unselectedItemColor: Colors.white,
                  selectedFontSize: 16,
                  unselectedFontSize: 14,
                  currentIndex: controller.currentIndex.value,
                  onTap: (i) {
                    if (i != controller.currentIndex.value) {
                      HapticFeedback.selectionClick();
                    }
                    controller.currentIndex.value = i;
                  },
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home_filled),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.qr_code_scanner_sharp),
                      label: 'ScanQr',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.badge_rounded),
                      label: 'Profile',
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
