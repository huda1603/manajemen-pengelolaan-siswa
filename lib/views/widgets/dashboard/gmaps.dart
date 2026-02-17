import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latlong2/latlong.dart';
import 'package:pengelolaan_data_siswa/utils/animations/fade_animation.dart';
import 'package:pengelolaan_data_siswa/utils/animations/scale_animation.dart';

class Gmaps extends StatefulWidget {
  const Gmaps({super.key});

  @override
  State<Gmaps> createState() => _GmapsState();
}

class _GmapsState extends State<Gmaps> {
  int? categoryIndex;
  final List<Map<IconData, String>> menuItems = [
    {Icons.home: "Home"},
    {Icons.restaurant: "Restaurant"},
    {Icons.hotel: "Hotels"},
    {Icons.local_grocery_store: "Groceries"},
    {Icons.local_pharmacy: "Pharmacy"},
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: FadeAnimation(
        from: 60,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFbd7612), width: 2),
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FlutterMap(
                  options: MapOptions(
                    initialCenter: LatLng(-0.51860, 117.11500),
                    initialZoom: 16,
                  ),
                  children: [
                    TileLayer(
                      urlTemplate:
                          "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                      userAgentPackageName: 'com.example.app',
                    ),
                    MarkerLayer(
                      markers: [
                        Marker(
                          point: const LatLng(-0.51860, 117.11500),
                          width: 80,
                          height: 80,
                          child: const Icon(
                            Icons.location_on,
                            color: Colors.red,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 5,
              left: 10,
              child: Wrap(
                children: [
                  FadeAnimation(
                    delay: const Duration(milliseconds: 100),
                    from: 50,
                    direction: Axis.horizontal,
                    child: ScaleAnimation(
                      delay: const Duration(milliseconds: 100),
                      child: gmapsSearchBar(),
                    ),
                  ),
                  const SizedBox(width: 17.5),
                  ...menuItems.map((item) {
                    final icon = item.keys.first;
                    final title = item.values.first;
                    final index = menuItems.indexOf(item);

                    return FadeAnimation(
                      delay: Duration(milliseconds: (index + 2) * 100),
                      from: 50,
                      direction: Axis.horizontal,
                      child: ScaleAnimation(
                        delay: Duration(milliseconds: (index + 2) * 100),
                        child: Padding(
                          padding: const EdgeInsetsGeometry.only(right: 6),
                          child: SizedBox(
                            height: 22.5,
                            child: GestureDetector(
                              onTap: () {
                                setState(() => categoryIndex = index);
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 7,
                                ),
                                decoration: BoxDecoration(
                                  color: categoryIndex == index
                                      ? Colors.black
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  spacing: 4,
                                  children: [
                                    Icon(
                                      icon,
                                      color: categoryIndex == index
                                          ? Colors.white
                                          : Colors.black,
                                      size: 15,
                                    ),
                                    Text(
                                      title,
                                      style: GoogleFonts.roboto(
                                        color: categoryIndex == index
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 12.5,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox gmapsSearchBar() {
    return SizedBox(
      width: 130,
      height: 22.5,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        textAlign: TextAlign.center,
        style: GoogleFonts.roboto(
          color: Colors.black,
          fontSize: 9,
          fontWeight: FontWeight.bold,
        ),
        textCapitalization: TextCapitalization.sentences,
        maxLength: 20,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          counterText: '',
          filled: true,
          fillColor: Colors.white,
          hintText: 'Cari Lokasi',
          hintStyle: GoogleFonts.roboto(color: Colors.grey, fontSize: 9),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: Colors.black, width: 1),
          ),
          suffixIcon: const Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 5,
            children: [
              Icon(Icons.search, color: Colors.grey, size: 15),
              Icon(Icons.diamond, color: Color(0xFF5396a0), size: 15),
            ],
          ),
        ),
      ),
    );
  }
}
