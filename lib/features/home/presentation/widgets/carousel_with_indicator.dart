import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:news_app/core/theme/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselWithIndicator extends StatefulWidget {
  const CarouselWithIndicator({super.key});

  @override
  State<CarouselWithIndicator> createState() => _CarouselWithIndicatorState();
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  final List<String> images = [
    'https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ];

  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            height: 250,
            aspectRatio: 16 / 9,

            // viewportFraction: 0.7,
            viewportFraction: 1.0,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 1200),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
          itemCount: images.length, // length of images list
          itemBuilder: (BuildContext context, int index, int pageViewIndex) {
            return Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(images[index], fit: BoxFit.cover),
              ),
            );
          },
        ),
        Positioned(
          bottom: 20,
          child: SmoothPageIndicator(
            controller: PageController(initialPage: _current),
            count: images.length,
            effect: ExpandingDotsEffect(
              dotWidth: 10,
              dotHeight: 10,
              activeDotColor: AppColors.greenColor,
              dotColor: Colors.grey,
            ),
          ),
        ),

        // Positioned(
        //   bottom: 10,
        //   left: 0,
        //   right: 0,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children:
        //         images.asMap().entries.map((entry) {
        //           return GestureDetector(
        //             onTap: () => _current = entry.key,
        //             child: Container(
        //               width: 8.0,
        //               height: 8.0,
        //               margin: const EdgeInsets.symmetric(
        //                 vertical: 10.0,
        //                 horizontal: 2.0,
        //               ),
        //               decoration: BoxDecoration(
        //                 shape: BoxShape.circle,
        //                 color:
        //                     _current == entry.key ? Colors.yellow : Colors.grey,
        //               ),
        //             ),
        //           );
        //         }).toList(),
        //   ),
        // ),
      ],
    );
  }
}
