import 'package:ajio/widgets/homeappbar.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ScreenStore extends StatefulWidget {
  const ScreenStore({super.key});

  @override
  State<ScreenStore> createState() => _ScreenStoreState();
}

class _ScreenStoreState extends State<ScreenStore> {
  int activeIndex = 0;
  final carouselStore = [
    'assets/expslider1.jpg',
    'assets/expslider2.jpg',
    'assets/expslider3.jpg',
  ];
  final carouselStore2 = [
    'assets/lasthome.jpg',
    'assets/expaxorte.jpg',
    'assets/expgap.jpg',
  ];
  final carouselStore3 = [
    'assets/expslider5.jpg',
    'assets/expslider6.jpg',
    'assets/expslider7.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 130,
              width: double.infinity,
              child: Image(image: AssetImage("assets/explorehead.jpg")),
            ),
            const SizedBox(
              height: 5,
            ),
            CarouselSlider.builder(
                itemCount: carouselStore.length,
                itemBuilder: (buildContext, index, realIndex) {
                  final imagePath = carouselStore[index];
                  return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Image(image: AssetImage(imagePath)),
                  );
                },
                options: CarouselOptions(
                  height: 300,
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(seconds: 3),
                  viewportFraction: 1,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeIndex = index;
                    });
                  },
                )),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Image(
                image: AssetImage('assets/exp2.jpg'),
                height: 90,
                width: double.infinity,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/expgrid1.jpg',
                        height: 180,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/expgrid2.jpg',
                              height: 90,
                            ),
                            Image.asset(
                              'assets/expgrid3.jpg',
                              height: 95,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0.8),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/expgrid4.jpg',
                            height: 86,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Image.asset(
                            'assets/expgrid4.jpg',
                            height: 87,
                          )
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/expgrid6.jpg',
                      height: 180,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/expgrid7.jpg',
                        height: 180,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 58),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/expgrid8.jpg',
                              height: 85,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Image.asset(
                              'assets/expgrid9.jpg',
                              height: 90,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            CarouselSlider.builder(
                itemCount: carouselStore2.length,
                itemBuilder: (buildContext, index, realindex) {
                  final imagePath = carouselStore2[index];
                  return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Image(
                      image: AssetImage(
                        imagePath,
                      ),
                      width: double.infinity,
                    ),
                  );
                },
                options: CarouselOptions(
                  height: 156,
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(seconds: 3),
                  scrollDirection: Axis.horizontal,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  pauseAutoPlayOnTouch: true,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeIndex = index;
                    });
                  },
                )),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Image(
                image: AssetImage('assets/expgearup.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            CarouselSlider.builder(
                itemCount: carouselStore3.length,
                itemBuilder: (buildContext, index, realIndex) {
                  final imagePath = carouselStore3[index];
                  return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Image(
                      image: AssetImage(
                        imagePath,
                      ),
                      width: double.infinity,
                    ),
                  );
                },
                options: CarouselOptions(
                  autoPlay: true,
                  scrollDirection: Axis.horizontal,
                  autoPlayAnimationDuration: const Duration(seconds: 3),
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  height: 302,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeIndex = index;
                    });
                  },
                ))
          ],
        ),
      ),
    ));
  }
}
