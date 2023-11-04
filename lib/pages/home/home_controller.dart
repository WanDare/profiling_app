import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profiling_app/pages/home/home_model.dart';

class AttendanceController extends GetxController {
  static List<AttendanceModel> attendanceModelList = [
    AttendanceModel(
      icon: Icons.date_range_outlined,
      title: 'Attendance',
      description: 'Check In Me',
    ),
    AttendanceModel(
      icon: Icons.present_to_all_rounded,
      title: 'Leave permission',
      description: 'History and request leave',
    ),
    AttendanceModel(
      icon: Icons.people,
      title: 'Members',
      description: 'List all members',
    ),
    AttendanceModel(
      icon: Icons.more_time_outlined,
      title: 'Overtime',
      description: 'CT request and history',
    ),
    AttendanceModel(
      icon: Icons.connect_without_contact_outlined,
      title: 'My Team',
      description: 'People who report to you',
    ),
  ];

  // Widget buildAttendanceItems() {
  //   return ListView.builder(
  //     itemCount: attendanceModelList.length,
  //     itemBuilder: (context, index) {
  //       AttendanceModel attendanceItemData = attendanceModelList[index];

  //       return GestureDetector(
  //         onTap: () {},
  //         child: ClipRRect(
  //           child: Container(
  //             decoration: BoxDecoration(
  //               color: Colors.white,
  //               borderRadius: BorderRadius.circular(25.0),
  //             ),
  //             child: Padding(
  //               padding: const EdgeInsets.all(15),
  //               child: Column(
  //                 crossAxisAlignment: CrossAxisAlignment.center,
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: [
  //                   Icon(
  //                     attendanceItemData.icon,
  //                   ),
  //                   Text(
  //                     attendanceItemData.title ?? '',
  //                   ),
  //                   const SizedBox(
  //                       height:
  //                           kSpace), // Define kSpace or use a specific value
  //                   Text(
  //                     attendanceItemData.description ?? '',
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }
}
