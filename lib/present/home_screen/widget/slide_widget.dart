
import 'package:carousel_slider/carousel_slider.dart';
import 'package:event_app/core/utils/image_constant.dart';
import 'package:flutter/Material.dart';

List<String> images = [
  ImageConstant.imgSlide1,
  ImageConstant.imgSlide2,
  ImageConstant.imgSlide3,
];

class CaroselImage extends StatefulWidget {
  const CaroselImage({Key? key}) : super(key: key);

  @override
  State<CaroselImage> createState() => _CaroselImageState();
}

class _CaroselImageState extends State<CaroselImage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
                height: 250.0,
                viewportFraction: 0.5,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            items: images.map((e) => Image.asset(e)).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
