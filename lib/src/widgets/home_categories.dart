import 'package:flutter/material.dart';

import '../models/categories.dart';

class HomeCategories extends StatelessWidget {
  final Size size;
  final int itemCount;
  final List<Categories> categories;
  const HomeCategories({
    super.key,
    required this.size,
    required this.itemCount,
    required this.categories,
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
                    image: NetworkImage(categories[index].imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(categories[index].title),
            ],
          );
        },
      ),
    );
  }
}
