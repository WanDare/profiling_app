import 'package:flutter/material.dart';

class AttendanceModel {
  final IconData icon;
  final Color iconColor;
  final double iconSize;
  final String title;
  final TextStyle titleStyle;
  final String description;
  final TextStyle descriptionStyle;

  AttendanceModel({
    required this.icon,
    required this.iconColor,
    required this.iconSize,
    required this.title,
    required this.titleStyle,
    required this.description,
    required this.descriptionStyle,
  });
}
