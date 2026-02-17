import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pengelolaan_data_siswa/utils/animations/fade_animation.dart';
import 'package:pengelolaan_data_siswa/utils/animations/scale_animation.dart';
import 'package:pengelolaan_data_siswa/views/widgets/dashboard/learn_more.dart';

class WelcomeContainer extends StatelessWidget {
  const WelcomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: FadeAnimation(
        from: -60,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFbd7612), width: 2),
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFd28722),
          ),
          child: Stack(
            children: [
              Positioned(
                right: 4,
                bottom: -45,
                top: 5,
                child: ScaleAnimation(
                  delay: const Duration(milliseconds: 30),
                  child: Image.asset("assets/student_study.png"),
                ),
              ),
              Positioned(
                left: 10,
                bottom: 7,
                child: FadeAnimation(
                  from: -45,
                  direction: Axis.horizontal,
                  child: const LearnMoreDrag(),
                ),
              ),
              Positioned(
                left: 10,
                top: 5,
                child: ScaleAnimation(
                  delay: const Duration(milliseconds: 15),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: GoogleFonts.poppins(height: 1),
                      children: [
                        TextSpan(
                          text: "Selamat ",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 30,
                          ),
                        ),
                        TextSpan(
                          text: "Datang\n",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 30,
                          ),
                        ),
                        TextSpan(
                          text: "Di E-Raport ",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          ),
                        ),
                        TextSpan(
                          text: "SMAN 5 Samarinda\n\n",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        TextSpan(
                          text: "Welcome Back,\nAhmad Nur Huda",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
