import 'package:flutter/material.dart';
import 'package:pengelolaan_data_siswa/utils/animations/fade_animation.dart';
import 'package:pengelolaan_data_siswa/views/widgets/dashboard/statistic_item.dart';

class ParticipationStatistic extends StatelessWidget {
  const ParticipationStatistic({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: FadeAnimation(
        delay: const Duration(milliseconds: 15),
        direction: Axis.horizontal,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFbd7612), width: 2),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            color: Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 28),
            child: Row(
              spacing: 14,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StatisticItem(count: 1000, label: 'Siswa'),
                StatisticItem(count: 50, label: 'Guru'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
