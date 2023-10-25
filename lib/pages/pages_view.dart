import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:profiling_app/pages/chekin/chekin_view.dart';
import 'package:profiling_app/pages/home/home_view.dart';
import 'package:profiling_app/pages/profile/profile_view.dart';
import 'pages_controller.dart';

class PagesView extends GetView<GetxController> {
  const PagesView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PagesController());
    return Scaffold(
      body: Obx(() {
        final currentPage = controller.currentIndex.value;

        return currentPage == 0
            ? const HomeView()
            : currentPage == 1
                ? const ChekinView()
                : currentPage == 2
                    ? const SizedBox()
                    : const ProfileView();
      }),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
            backgroundColor: const Color.fromARGB(255, 4, 8, 53),
            iconSize: 18,
            selectedIconTheme: const IconThemeData(size: 22),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white38,
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
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.check_box_outlined),
                label: 'ChekIn',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Profile',
              ),
            ]);
      }),
    );
  }
}
