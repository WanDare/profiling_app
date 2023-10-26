import 'package:flutter/material.dart';
import 'package:profiling_app/pages/home/home_model.dart';

import '../../core/styles/size.dart';

class AttendanceController {
  static AttendanceModel createAttendanceItemData() {
    return AttendanceModel(
      icon: Icons.edit_calendar_outlined,
      iconColor: Colors.orange,
      iconSize: 50,
      title: "Attendance",
      titleStyle: const TextStyle(
        fontSize: kFont,
        fontWeight: FontWeight.bold,
        color: Colors.orange,
      ),
      description: "The total percentage of all activity",
      descriptionStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Color.fromARGB(255, 4, 8, 53),
      ),
    );
  }
}
