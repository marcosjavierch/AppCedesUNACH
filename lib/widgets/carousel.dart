import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'assets/slidernoticia.jpg',
      'assets/carousel_one.jpg',
      'assets/carousel_two.jpg',
      'assets/carousel_three.jpg',
      'assets/carousel_four.jpg',
      'assets/carousel_five.jpg',
      'assets/carousel_six.jpg',
      'assets/carousel_seven.jpg',
    ];
    final List<Widget> imageSliders = imgList.map((item) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(3),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 5), // changes position of shadow
                ),
              ],
            border: Border.all(color: Colors.black, width: 0.7),
            ),
            child: Image.asset(
              item,
              fit: BoxFit.cover,
              width: 1000.0,
            ),
          ),
        ),
      );
    }).toList();

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2.3,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            initialPage: 1,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
          ),
          items: imageSliders,
        ),
      ],
    );
  }
}
