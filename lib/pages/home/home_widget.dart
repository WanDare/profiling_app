import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profiling_app/core/styles/size.dart';
import 'package:profiling_app/pages/profile/profile_view.dart';
import 'home_controller.dart';

@override
Widget buildCustomWidget(int index, BuildContext context) {
  if (index == 0) {
    final attendanceItemData = AttendanceController.createAttendanceItemData();
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProfileView(),
          ),
        );
      },
      child: ClipRRect(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
            // height: Get.height * 0.10,
            // width: Get.width * 0.4,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  attendanceItemData.icon,
                  color: attendanceItemData.iconColor,
                  size: attendanceItemData.iconSize,
                ),
                Text(
                  attendanceItemData.title,
                  style: attendanceItemData.titleStyle,
                ),
                const SizedBox(height: kSpace),
                Text(
                  attendanceItemData.description,
                  style: attendanceItemData.descriptionStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  } else if (index == 1) {
    // Customize the second widget
    final attendanceItemData = AttendanceController.createAttendanceItemData();
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProfileView(),
          ),
        );
      },
      child: ClipRRect(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
            // height: Get.height * 0.10,
            // width: Get.width * 0.4,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.present_to_all_rounded,
                  color: attendanceItemData.iconColor,
                  size: attendanceItemData.iconSize,
                ),
                Text(
                  "Leave permission",
                  style: attendanceItemData.titleStyle,
                ),
                const SizedBox(height: kSpace),
                Text(
                  attendanceItemData.description,
                  style: attendanceItemData.descriptionStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  } else if (index == 2) {
    // Customize the third widget
    final attendanceItemData = AttendanceController.createAttendanceItemData();
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProfileView(),
          ),
        );
      },
      child: ClipRRect(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
            // height: Get.height * 0.10,
            // width: Get.width * 0.4,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.people,
                  color: attendanceItemData.iconColor,
                  size: attendanceItemData.iconSize,
                ),
                Text(
                  "Members",
                  style: attendanceItemData.titleStyle,
                ),
                const SizedBox(height: kSpace),
                Text(
                  attendanceItemData.description,
                  style: attendanceItemData.descriptionStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  } else {
    // Customize the fourth widget
    final attendanceItemData = AttendanceController.createAttendanceItemData();
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProfileView(),
          ),
        );
      },
      child: ClipRRect(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
            // height: Get.height * 0.10,
            // width: Get.width * 0.4,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.timer_off_outlined,
                  color: attendanceItemData.iconColor,
                  size: attendanceItemData.iconSize,
                ),
                Text(
                  "Overtime",
                  style: attendanceItemData.titleStyle,
                ),
                const SizedBox(height: kSpace),
                Text(
                  attendanceItemData.description,
                  style: attendanceItemData.descriptionStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
