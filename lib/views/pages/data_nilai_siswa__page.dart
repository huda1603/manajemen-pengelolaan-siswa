import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pengelolaan_data_siswa/views/widgets/global_widget/heading.dart';

class DataNilaiSiswaPage extends StatelessWidget {
  final bool isDrawerOpen;
  final ValueChanged<bool> onTapDrawer;
  const DataNilaiSiswaPage({
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
            heading: "Data Nilai Siswa",
            isDrawerOpen: isDrawerOpen,
            onTapDrawer: (value) => onTapDrawer(value),
          ),
          Expanded(
            child: Center(
              child: Text(
                "Data Nilai Siswa",
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
