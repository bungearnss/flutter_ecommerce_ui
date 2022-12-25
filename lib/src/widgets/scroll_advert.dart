import 'package:flutter/gestures.dart';
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
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
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
        ),
        Container(
          margin: const EdgeInsets.only(top: 5),
          width: size.width,
          height: 8,
          alignment: Alignment.center,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: itemCount,
            itemBuilder: (context, index) {
              return Container(
                width: 8,
                margin: const EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  color: currentIndex == index
                      ? Colors.grey.shade500
                      : Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(30),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
