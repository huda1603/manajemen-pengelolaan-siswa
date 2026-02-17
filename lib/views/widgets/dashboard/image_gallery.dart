import 'package:flutter/material.dart';
import 'package:pengelolaan_data_siswa/utils/animations/fade_animation.dart';
import 'package:pengelolaan_data_siswa/utils/animations/scale_animation.dart';

class ImageGallery extends StatelessWidget {
  ImageGallery({super.key});

  final List<String> galleries = [
    "assets/foto_sekolahan1.jpg",
    "assets/foto_sekolahan2.jpg",
    "assets/foto_sekolahan3.jpg",
    "assets/foto_sekolahan4.jpg",
    "assets/foto_sekolahan5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: galleries.length,
        itemBuilder: (context, index) {
          return FadeAnimation(
            direction: Axis.horizontal,
            delay: Duration(milliseconds: 100 * index),
            child: ScaleAnimation(
              delay: Duration(milliseconds: 100 * index),
              child: Padding(
                padding: EdgeInsets.only(right: index == 4 ? 0 : 12),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFbd7612), width: 2),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(galleries[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
