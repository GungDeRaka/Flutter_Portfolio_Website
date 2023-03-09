import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_flutter_portfolio_website/util/color_palettes.dart';
import 'package:my_flutter_portfolio_website/util/sizing.dart';

class ProjectShowcase extends StatelessWidget {
  const ProjectShowcase(this.ratio, {super.key});
  final BoxConstraints ratio;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      height: ratio.maxHeight * 0.7,
      width: ratio.maxWidth * 0.75,
      decoration: BoxDecoration(
          border: Border.all(
        color: kGreenColor,
      )),
      child: CarouselSlider(
        options: CarouselOptions(
            height: ratio.maxHeight * 0.55,
            autoPlay: true,
            enlargeCenterPage: true,
            autoPlayInterval: const Duration(seconds: 3, milliseconds: 800)),
        items: [1, 2, 3, 4].map((imageUrl) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(6.0),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  child: (ratio.maxWidth > mobileWidth)
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Container(
                                color: Colors.red,
                              ),
                            ),
                            const SizedBox(
                              width: 16.0,
                            ),
                            Flexible(
                              child: Container(
                                color: Colors.red,
                              ),
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            Flexible(
                              flex: 4,
                              child: Container(
                                color: Colors.red,
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Flexible(
                              child: Container(
                                color: Colors.red,
                                child: const SingleChildScrollView(
                                  padding: EdgeInsets.symmetric(vertical: 4,horizontal: 12),
                                  child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
