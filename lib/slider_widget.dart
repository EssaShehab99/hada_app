import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'image_network.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);
  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: CarouselSlider(
                  carouselController: carouselController,
                  items: List<Widget>.generate(
                    3,
                    (index) => Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF0C21B2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ImageNetwork(
                        url:
                            "https://scontent.fsah2-1.fna.fbcdn.net/v/t39.30808-6/309859025_475186941313094_2778700301142702125_n.png?_nc_cat=108&ccb=1-7&_nc_sid=e3f864&_nc_ohc=aYIDdw1yzN4AX8nA_qu&_nc_ht=scontent.fsah2-1.fna&oh=00_AfD4RzHpzSVQOlewBf-vSfmq0RrVbGbzgrA4xPqin_LGqg&oe=64101F24",
                        height: double.infinity,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  options: CarouselOptions(
                    height: 200,
                    enlargeFactor: 0.3,
                    viewportFraction: 1,
                    enableInfiniteScroll: true,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    onPageChanged: (int index, _) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  )),
            ),
          ),
          Expanded(
              flex: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = 0; i < 3; ++i)
                      Container(
                        height: 5,
                        width: currentIndex == i ? 30 : 15,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            color: currentIndex == i
                                ? Color(0xFF0C21B2)
                                : Color(0xFF8E8E8E),
                            borderRadius: BorderRadius.circular(20)),
                      )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
