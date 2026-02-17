import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LearnMoreDrag extends StatefulWidget {
  const LearnMoreDrag({super.key});

  @override
  State<LearnMoreDrag> createState() => _LearnMoreDragState();
}

class _LearnMoreDragState extends State<LearnMoreDrag> {
  double dragPosition = 0;
  final double buttonWidth = 145;
  final double arrowCircle = 26;

  @override
  Widget build(BuildContext context) {
    double maxDrag = buttonWidth - arrowCircle - 6;

    return Container(
      width: buttonWidth,
      height: 32,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: StadiumBorder(),
      ),
      child: Stack(
        children: [
          Center(
            child: Opacity(
              opacity: (1 - (dragPosition / maxDrag)).clamp(0.0, 1.0),
              child: Text(
                "Learn More",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 50),
            left: dragPosition + 3,
            top: 3,
            child: GestureDetector(
              onHorizontalDragUpdate: (details) {
                setState(() {
                  dragPosition += details.delta.dx;
                  if (dragPosition < 0) dragPosition = 0;
                  if (dragPosition > maxDrag) dragPosition = maxDrag;
                });
              },
              onHorizontalDragEnd: (details) {
                if (dragPosition < maxDrag * 0.8) {
                  setState(() => dragPosition = 0);
                } else {
                  setState(() => dragPosition = maxDrag);
                }
              },
              child: const CircleAvatar(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                radius: 13,
                child: Icon(Icons.arrow_right_alt_outlined),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
