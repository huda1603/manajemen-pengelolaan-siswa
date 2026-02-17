import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pengelolaan_data_siswa/utils/animations/fade_animation.dart';
import 'package:pengelolaan_data_siswa/utils/animations/scale_animation.dart';

class DrawerItemCustom extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final int index;
  final ValueChanged<Map<bool, int>> onTap;
  const DrawerItemCustom({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.index,
    required this.onTap,
  });

  @override
  State<DrawerItemCustom> createState() => _DrawerItemCustomState();
}

class _DrawerItemCustomState extends State<DrawerItemCustom> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onTap({!widget.isSelected: widget.index}),
      child: MouseRegion(
        onEnter: (event) => setState(() => isHovered = true),
        onExit: (event) => setState(() => isHovered = false),
        child: AnimatedContainer(
          padding: const EdgeInsets.only(left: 15),
          duration: const Duration(milliseconds: 100),
          decoration: BoxDecoration(
            color: isHovered ? Colors.white.withAlpha(10) : Colors.transparent,
            border: isHovered
                ? Border.all(color: Colors.white, width: 0.2)
                : null,
          ),
          child: Row(
            children: [
              FadeAnimation(
                from: -50,
                direction: Axis.horizontal,
                delay: Duration(milliseconds: widget.index * 100),
                child: ScaleAnimation(
                  delay: Duration(milliseconds: widget.index * 100),
                  child: Icon(widget.icon, color: Colors.white),
                ),
              ),
              const SizedBox(width: 8),
              FadeAnimation(
                from: -50,
                direction: Axis.horizontal,
                delay: Duration(milliseconds: widget.index * 100),
                child: ScaleAnimation(
                  delay: Duration(milliseconds: widget.index * 100),
                  child: Text(
                    widget.label,
                    style: GoogleFonts.roboto(color: Colors.white),
                  ),
                ),
              ),
              const Spacer(),
              Visibility(
                visible: widget.isSelected,
                maintainAnimation: true,
                maintainSize: true,
                maintainState: true,
                child: Container(
                  width: 8,
                  height: 30,
                  decoration: const BoxDecoration(color: Color(0xFFbd7612)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
