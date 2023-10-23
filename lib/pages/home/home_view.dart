import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profiling_app/xcore.dart';

/// Flutter code sample for [BottomNavigationBar].
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
      body: BottomNavigationBarExample(),
    );
  }
}
