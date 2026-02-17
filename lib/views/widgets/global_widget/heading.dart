import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pengelolaan_data_siswa/utils/animations/fade_animation.dart';

class Heading extends StatelessWidget {
  final String heading;
  final bool isDrawerOpen;
  final ValueChanged<bool> onTapDrawer;
  const Heading({
    super.key,
    required this.heading,
    required this.isDrawerOpen,
    required this.onTapDrawer,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (!isDrawerOpen)
            GestureDetector(
              onTap: () => onTapDrawer(!isDrawerOpen),
              child: Icon(Icons.menu, size: 20, color: Colors.black),
            ),
          if (!isDrawerOpen) SizedBox(width: 10),
          FadeAnimation(
            from: -30,
            direction: Axis.horizontal,
            child: Text(
              heading,
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
          const Spacer(),
          FadeAnimation(
            from: 30,
            direction: Axis.horizontal,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Color(0xFF58726f),
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: Image.asset("assets/profile.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
