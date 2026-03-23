import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  final PageController _controller = PageController();

  final List<String> images = [
    "https://photo.znews.vn/w660/Uploaded/wyhktpu/2020_10_01/119699855_632062647492864_4372496523093910298_n.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_1VXci_v8NoRjG9essXmMWPcsmajW5nTbSg&s",
    "https://bloganchoi.com/wp-content/uploads/2023/03/thu-cung-duoc-yeu-thich-nhat-viet-nam-17-696x539.jpg",
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: _controller,
            itemCount: images.length,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    images[index],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),

        // Indicator (chấm dưới)
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(images.length, (index) {
            return Container(
              margin: const EdgeInsets.all(4),
              width: currentPage == index ? 12 : 8,
              height: currentPage == index ? 12 : 8,
              decoration: BoxDecoration(
                color: currentPage == index
                    ? Colors.blue
                    : Colors.grey,
                shape: BoxShape.circle,
              ),
            );
          }),
        ),

        const SizedBox(height: 20),
      ],
    );
  }
}