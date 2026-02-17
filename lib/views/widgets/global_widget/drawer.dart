import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pengelolaan_data_siswa/views/widgets/global_widget/drawer_item.dart';

class DrawerCustom extends StatefulWidget {
  final bool isDrawerOpen;
  final ValueChanged<bool> onTapDrawer;
  final ValueChanged<int> onChangePage;
  const DrawerCustom({
    super.key,
    required this.isDrawerOpen,
    required this.onTapDrawer,
    required this.onChangePage,
  });

  @override
  State<DrawerCustom> createState() => _DrawerCustomState();
}

class _DrawerCustomState extends State<DrawerCustom> {
  int selectedIndex = 0;
  final List<Map<String, Object>> drawerItems = [
    {
      "Dashboard": [Icons.dashboard, 0],
    },
    {
      "Data Siswa": [Icons.group, 1],
    },
    {
      "Data Guru": [Icons.group, 2],
    },
    {
      "Data Nilai Siswa": [Icons.file_open, 3],
    },
    {
      "Absensi Guru": [Icons.file_present_outlined, 4],
    },
    {
      "Logout": [Icons.logout_outlined, 5],
    },
  ];

  Future<bool>? drawerDelay;

  @override
  void initState() {
    super.initState();
    if (widget.isDrawerOpen) {
      drawerDelay = waitMiliseconds();
    }
  }

  @override
  void didUpdateWidget(covariant DrawerCustom oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isDrawerOpen && !oldWidget.isDrawerOpen) {
      drawerDelay = waitMiliseconds();
    } else if (!widget.isDrawerOpen) {}
  }

  Future<bool> waitMiliseconds() async {
    await Future.delayed(Duration(milliseconds: 50));
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 300),
      top: 0,
      bottom: 0,
      left: widget.isDrawerOpen ? 0 : -250,
      child: Container(
        width: 250,
        padding: const EdgeInsets.only(top: 12, bottom: 12, left: 12),
        color: Color(0xFF15100d),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                right: 20,
                top: 15,
                bottom: 15,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: Image.asset("assets/sman5.png", fit: BoxFit.cover),
                  ),
                  const SizedBox(width: 7),
                  Expanded(
                    child: FittedBox(
                      child: Text(
                        "SMAN 5 Samarinda",
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 7),
                  GestureDetector(
                    onTap: () => widget.onTapDrawer(!widget.isDrawerOpen),
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            if (widget.isDrawerOpen)
              FutureBuilder<bool>(
                future: drawerDelay,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return SizedBox.shrink();
                  }
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    spacing: 12,
                    children: [
                      ...drawerItems.map((item) {
                        final values = item.values.first as List<Object>;

                        final icon = values[0] as IconData;
                        final index = values[1] as int;
                        final label = item.keys.first;

                        return DrawerItemCustom(
                          icon: icon,
                          label: label,
                          isSelected: selectedIndex == index,
                          index: index,
                          onTap: (value) {
                            setState(() => selectedIndex = value.values.first);
                            if (!(drawerItems.length == index + 1)) {
                              widget.onChangePage(value.values.first);
                            }
                          },
                        );
                      }),
                    ],
                  );
                },
              ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: SizedBox(
                height: 130,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(
                    "assets/back-to-school.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
