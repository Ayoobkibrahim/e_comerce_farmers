import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    List Carousel = [
      "https://t3.ftcdn.net/jpg/02/18/03/82/240_F_218038263_jrMTjxavorAH0fjwrm6uMlV2B0Xnw4jV.jpg",
      "https://t4.ftcdn.net/jpg/01/13/70/87/240_F_113708770_7mMhmc7RxXk7wAd7jdymyIQ8ojbRz7ex.jpg",
      "https://t3.ftcdn.net/jpg/03/45/74/92/240_F_345749283_sLfdJ4c8pKc0p35eUcI4JvtjrAm8Lkf4.jpg",
    ];
    return CarouselSlider(
      items:  List.generate(Carousel.length, (index) => SliderItemCard(imageUrl: Carousel[index])),
      options: CarouselOptions(
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 4),
          autoPlayAnimationDuration: const Duration(milliseconds: 1200),
          //aspectRatio: 16 / 9,
          aspectRatio: 64/10,
          height: 200,
          viewportFraction: 1
      ),
    );
  }
}

class SliderItemCard extends StatelessWidget {
  final String imageUrl;
  const SliderItemCard({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(imageUrl),
        ),
      ),
    );
  }
}
