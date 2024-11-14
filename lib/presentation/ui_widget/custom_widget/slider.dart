import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:edutec_hub/data/models/image_slider.dart';
import 'package:flutter/material.dart';

class SlidersContainer extends StatefulWidget {
  final List<ImageSlider> sliders;

  const SlidersContainer({Key? key, required this.sliders}) : super(key: key);

  @override
  State<SlidersContainer> createState() => _SlidersContainerState();
}

class _SlidersContainerState extends State<SlidersContainer> {
  // 緩存已解碼的圖片
  final Map<String, Image> _decodedImages = {};

  @override
  void initState() {
    super.initState();
    // 預先解碼圖片
    _precacheImages();
  }

  Future<void> _precacheImages() async {
    for (var slider in widget.sliders) {
      if (!_decodedImages.containsKey(slider.id.toString())) {
        try {
          final bytes = base64Decode(slider.imageData);
          _decodedImages[slider.id.toString()] = Image.memory(
            bytes,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.error),
          );
        } catch (e) {
          print('Error decoding image: $e');
        }
      }
    }
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: widget.sliders.map((slider) {
            final imageKey = slider.id.toString();
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: _decodedImages[imageKey] ??
                    const Center(child: CircularProgressIndicator()),
              ),
            );
          }).toList(),
          options: CarouselOptions(
            height: 200.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _decodedImages.clear();
    super.dispose();
  }
}

class CustomCarouselWithIndicator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CustomCarouselWithIndicatorState();
  }
}

class _CustomCarouselWithIndicatorState
    extends State<CustomCarouselWithIndicator> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  final List<Color> colors = [
    Color(0xFFFF0000), // Red
    Color(0xFF00FF00), // Green
    Color(0xFF0000FF), // Blue
  ];

  late final List<Widget> imageSliders;

  @override
  void initState() {
    super.initState();
    imageSliders = colors
        .map((color) => Container(
              color: color,
              child: Center(
                child: Text(
                  'Slide ${colors.indexOf(color) + 1}',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CarouselSlider(
        items: imageSliders,
        carouselController: _controller,
        options: CarouselOptions(
            height: 200.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.9,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imageSliders.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width: 12.0,
              height: 12.0,
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
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
    ]);
  }
}
