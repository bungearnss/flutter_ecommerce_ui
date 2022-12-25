import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Size size;
  final double iconSize;
  const CustomAppBar({super.key, required this.size, required this.iconSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height / 5.5,
      child: Stack(children: [
        Container(
          width: size.width,
          height: size.height / 7,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 25, 125, 247),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
        ),
        Positioned(
          top: 35.0,
          left: 0,
          right: 0,
          child: SizedBox(
            height: size.height / 16,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    size: iconSize,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(child: Container()),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    size: iconSize,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart,
                    size: iconSize,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 12,
          left: 20,
          right: 20,
          child: Material(
            shadowColor: Colors.black,
            elevation: 3.0,
            borderRadius: BorderRadius.circular(15),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.all(10),
                suffixIcon: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 146, 146, 146),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                hintText: "Search here",
                hintStyle: const TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 131, 131, 131),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
