import 'dart:async';

import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/home_categories.dart';
import '../widgets/scroll_advert.dart';
import '../components/expanded_more.dart';

import '../constants/data.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  PageController _pageController = PageController();
  int _currentIndex = 0;
  double iconSize = 25.0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 5), ((timer) {
      if (_currentIndex < promoteList.length - 1) {
        _currentIndex++;
        _pageController.animateToPage(
          _currentIndex,
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeIn,
        );
      } else {
        _currentIndex = 0;
      }
    }));
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(size: size, iconSize: iconSize),
              Container(
                margin: const EdgeInsets.only(
                  top: 0,
                  right: 15,
                  left: 15,
                  bottom: 0,
                ),
                width: width,
                height: height / 1.22,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      ScrollAdvert(
                        size: size,
                        currentIndex: _currentIndex,
                        pageController: _pageController,
                        itemCount: promoteList.length,
                        imageUrl: promoteList,
                        pageChange: (index) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                      ),
                      const SizedBox(height: 15),
                      const ExpandedMore(txt: "Categories", delay: 2),
                      HomeCategories(
                        width: width / 4.7,
                        height: height / 10,
                        itemCount: cateList.length,
                        categories: cateList,
                      ),
                      const SizedBox(height: 15),
                      const ExpandedMore(txt: "Hot Product", delay: 2),
                      HomeCategories(
                        isBig: true,
                        width: width / 4,
                        height: height / 7,
                        itemCount: hotProductList.length,
                        categories: hotProductList,
                      ),
                      const SizedBox(height: 15),
                      const ExpandedMore(txt: "Featured", delay: 2),
                      HomeCategories(
                        isBig: true,
                        width: width / 4,
                        height: height / 7,
                        itemCount: featuredList.length,
                        categories: featuredList,
                      ),
                      const SizedBox(height: 15),
                      const ExpandedMore(txt: "Bests For Customer", delay: 2),
                      HomeCategories(
                        isBig: true,
                        width: width / 4,
                        height: height / 7,
                        itemCount: forCustomerList.length,
                        categories: forCustomerList,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
