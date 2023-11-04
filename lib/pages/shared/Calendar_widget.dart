import 'package:flutter/material.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';

class CalendarWeeks extends StatelessWidget {
  const CalendarWeeks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CalendarWeek(
      backgroundColor: Colors.transparent,
      height: 100,
      showMonth: false,
      todayDateStyle: const TextStyle(
        color: Colors.white,
      ),
      todayBackgroundColor: Colors.white12,
      minDate: DateTime.now().add(
        const Duration(days: -365),
      ),
      maxDate: DateTime.now().add(
        const Duration(days: 365),
      ),
      // decorations: [
      //   DecorationItem(
      //     decorationAlignment: FractionalOffset.bottomRight,
      //     date: DateTime.now(),
      //     decoration: const Icon(
      //       Icons.check,
      //       color: Colors.white,
      //     ),
      //   ),
      // ],
    );
  }
}
