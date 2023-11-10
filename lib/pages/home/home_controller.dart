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
}
