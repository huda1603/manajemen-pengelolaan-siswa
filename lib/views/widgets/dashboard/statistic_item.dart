import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pengelolaan_data_siswa/utils/animations/scale_animation.dart';

class StatisticItem extends StatelessWidget {
  final int count;
  final String label;
  const StatisticItem({super.key, required this.count, required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ScaleAnimation(
        delay: const Duration(milliseconds: 30),
        child: Container(
          padding: const EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFbd7612), width: 1.5),
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  color: Color(0xFFbd7612),
                ),
                child: Icon(
                  Icons.groups_2_outlined,
                  size: 45,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              Text(
                count.toString(),
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                label,
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
