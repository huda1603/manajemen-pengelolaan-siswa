import 'package:flutter/material.dart';
import 'package:pengelolaan_data_siswa/views/pages/absensi_guru__page.dart';
import 'package:pengelolaan_data_siswa/views/pages/dashboard__page.dart';
import 'package:pengelolaan_data_siswa/views/pages/data_guru__page.dart';
import 'package:pengelolaan_data_siswa/views/pages/data_nilai_siswa__page.dart';
import 'package:pengelolaan_data_siswa/views/pages/data_siswa__page.dart';
import 'package:pengelolaan_data_siswa/views/widgets/global_widget/drawer.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isDrawerOpen = true;
  int pagesIndex = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      DashboardPage(
        isDrawerOpen: isDrawerOpen,
        onTapDrawer: (value) => setState(() => isDrawerOpen = value),
      ),
      DataSiswaPage(
        isDrawerOpen: isDrawerOpen,
        onTapDrawer: (value) => setState(() => isDrawerOpen = value),
      ),
      DataGuruPage(
        isDrawerOpen: isDrawerOpen,
        onTapDrawer: (value) => setState(() => isDrawerOpen = value),
      ),
      DataNilaiSiswaPage(
        isDrawerOpen: isDrawerOpen,
        onTapDrawer: (value) => setState(() => isDrawerOpen = value),
      ),
      AbsensiGuruPage(
        isDrawerOpen: isDrawerOpen,
        onTapDrawer: (value) => setState(() => isDrawerOpen = value),
      ),
    ];

    return Scaffold(
      backgroundColor: Color(0xFF15100d),
      body: Stack(
        children: [
          DrawerCustom(
            isDrawerOpen: isDrawerOpen,
            onTapDrawer: (value) => setState(() => isDrawerOpen = value),
            onChangePage: (index) => setState(() => pagesIndex = index),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            top: 0,
            bottom: 0,
            right: 0,
            left: isDrawerOpen ? 250 : 0,
            child: pages[pagesIndex],
          ),
        ],
      ),
    );
  }
}
