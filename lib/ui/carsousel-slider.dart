import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CarsouselSlider extends StatefulWidget {
  const CarsouselSlider({super.key});

  @override
  State<CarsouselSlider> createState() => _CarsouselSliderState();
}

class _CarsouselSliderState extends State<CarsouselSlider> {
  final List<Widget> items = [
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
          image: AssetImage('lib/images/landscape.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: AssetImage('lib/images/big-one.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: AssetImage('lib/images/landscape.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: AssetImage('lib/images/big-one.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    ),
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: items,
          options: CarouselOptions(
            height: 180.0,
            enlargeCenterPage: true,
            autoPlay: false,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        DotsIndicator(
          dotsCount: items.length,
          position: currentIndex.toInt(),
        )
      ],
    );
  }
}
