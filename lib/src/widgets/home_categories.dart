import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  final Size size;
  final int itemCount;
  final String imageUrl;
  final String cateTitle;
  const HomeCategories({
    super.key,
    required this.size,
    required this.itemCount,
    required this.imageUrl,
    required this.cateTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      width: size.width,
      height: size.height / 7,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.all(6.0),
                width: size.width / 4.7,
                height: size.height / 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(cateTitle)
            ],
          );
        },
      ),
    );
  }
}
