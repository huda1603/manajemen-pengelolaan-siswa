import 'package:flutter/material.dart';
import 'package:pengelolaan_data_siswa/utils/animations/fade_animation.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: FadeAnimation(
        delay: const Duration(milliseconds: 15),
        direction: Axis.horizontal,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7.5),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFbd7612), width: 2),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            color: Colors.transparent,
          ),
          child: SingleChildScrollView(
            child: TableCalendar(
              firstDay: DateTime.utc(2020, 1, 1),
              lastDay: DateTime.utc(2030, 12, 31),
              focusedDay: DateTime.now(),
            ),
          ),
        ),
      ),
    );
  }
}
