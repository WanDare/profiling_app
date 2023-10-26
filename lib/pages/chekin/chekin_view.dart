import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profiling_app/pages/shared/Calendar_widget.dart';

class ChekinView extends StatelessWidget {
  const ChekinView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
          onPressed: () => Get.back(),
        ),
      ),
      body: CalendarWeeks(),
    );
  }
}
