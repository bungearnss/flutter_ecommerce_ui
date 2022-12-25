import 'package:flutter/material.dart';

class ScrollAdvert extends StatelessWidget {
  final Size size;
  final int currentIndex;
  final PageController pageController;
  final Function(int) pageChange;
  final int itemCount;
  final List<String> imageUrl;
  const ScrollAdvert({
    super.key,
    required this.size,
    required this.currentIndex,
    required this.pageController,
    required this.pageChange,
    required this.itemCount,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10.0),
          width: size.width,
          height: size.height / 5,
          child: PageView.builder(
            onPageChanged: pageChange,
            controller: pageController,
            physics: const BouncingScrollPhysics(),
            itemCount: itemCount,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(imageUrl[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
