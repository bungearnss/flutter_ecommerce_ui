import 'package:flutter/material.dart';

import '../models/categories.dart';

class HomeCategories extends StatelessWidget {
  final double width;
  final double height;
  final int itemCount;
  final List<Categories> categories;
  final bool? isBig;
  const HomeCategories({
    super.key,
    required this.width,
    required this.height,
    required this.itemCount,
    required this.categories,
    this.isBig,
  });

  @override
  Widget build(BuildContext context) {
    final widthBox = MediaQuery.of(context).size.width;
    final heightBox = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      width: widthBox,
      height: isBig == true ? heightBox / 5 : heightBox / 7,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.all(6.0),
                width: width,
                height: height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage(
                      categories[index].imageUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                categories[index].title,
              ),
            ],
          );
        },
      ),
    );
  }
}
