import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_flutter_portfolio_website/util/color_palettes.dart';
import 'package:my_flutter_portfolio_website/util/sizing.dart';

class ProjectShowcase extends StatelessWidget {
  const ProjectShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: heightMedQuery(context, 0.65),
      width: widthMedQuery(context, 0.8),
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.grey[900]!,
      )),
      child: CarouselSlider(
        options: CarouselOptions(
            height: heightMedQuery(context, 0.4),
            autoPlay: true,
            enlargeCenterPage: true,
            autoPlayInterval: const Duration(seconds: 3, milliseconds: 800)),
        items: [1, 2, 3, 4].map((imageUrl) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  color: kGreenColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(6.0),
                  ),
                ),
                child: Placeholder(),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
