import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profiling_app/pages/pages_route.dart';
import 'home_controller.dart';
import 'package:profiling_app/core/styles/size.dart';
import 'package:profiling_app/pages/profile/profile_view.dart';

class ItemWidget extends GetView<AttendanceController> {
  const ItemWidget({
    Key? key,
    required this.icons,
    required this.title,
    required this.description,
  });

  final IconData icons;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return buildCustomWidget(context);
  }

  Widget buildCustomWidget(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(PageRouter.profile);
      },
      child: ClipRRect(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icons,
                  color: Colors.orange,
                  size: 60,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
                const SizedBox(height: kSpace),
                Text(
                  description,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 4, 8, 53),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
