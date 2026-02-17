import 'package:flutter/material.dart';
import 'package:pengelolaan_data_siswa/views/widgets/dashboard/calendar.dart';
import 'package:pengelolaan_data_siswa/views/widgets/dashboard/gmaps.dart';
import 'package:pengelolaan_data_siswa/views/widgets/dashboard/image_gallery.dart';
import 'package:pengelolaan_data_siswa/views/widgets/dashboard/participation_statistic.dart';
import 'package:pengelolaan_data_siswa/views/widgets/dashboard/welcome_container.dart';
import 'package:pengelolaan_data_siswa/views/widgets/global_widget/heading.dart';

class DashboardPage extends StatelessWidget {
  final bool isDrawerOpen;
  final ValueChanged<bool> onTapDrawer;
  const DashboardPage({
    super.key,
    required this.isDrawerOpen,
    required this.onTapDrawer,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      padding: const EdgeInsets.only(top: 27, left: 27, bottom: 27),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(isDrawerOpen ? 30 : 0),
          bottomLeft: Radius.circular(isDrawerOpen ? 30 : 0),
        ),
        color: Colors.white,
      ),
      child: Column(
        spacing: 12,
        children: [
          Heading(
            heading: "Dashboard",
            isDrawerOpen: isDrawerOpen,
            onTapDrawer: (value) => onTapDrawer(value),
          ),
          Expanded(
            child: Row(
              spacing: 12,
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    spacing: 10,
                    children: [
                      // Expanded(flex: 6, child: const Placeholder()),
                      // Expanded(flex: 5, child: const Placeholder()),
                      // Expanded(flex: 5, child: const Placeholder()),
                      const WelcomeContainer(),
                      ImageGallery(),
                      const Gmaps(),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    spacing: 10,
                    children: [
                      // Expanded(flex: 3, child: const Placeholder()),
                      // Expanded(flex: 2, child: const Placeholder()),
                      const Calendar(),
                      const ParticipationStatistic(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
