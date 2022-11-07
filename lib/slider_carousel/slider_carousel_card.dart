import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SlideCards extends StatefulWidget {
  const SlideCards({super.key});

  @override
  State<SlideCards> createState() => _SlideCardsState();
}
class _SlideCardsState extends State<SlideCards> {

  final Random _random = Random();
  List<List<Color>> gradientColors = [];
  List<Color> gradient1 = [
    Colors.redAccent,
    Colors.orangeAccent
  ];
  List<Color> gradient2 = [
    Colors.blueAccent,
    Colors.indigo,
  ];
  List<Color> gradient3 = [
    Colors.green,
    Colors.lightGreenAccent
  ];
  List<Color> gradient4 = [
    Colors.deepPurpleAccent,
    Colors.purpleAccent,
  ];

  @override
  void initState() {
    super.initState();
    gradientColors.addAll({
      gradient1,
      gradient2,
      gradient3,
      gradient4,
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CarouselSlider(
            options: CarouselOptions(
              height: 200,
              autoPlay: false,
              enlargeCenterPage: true,
            ),
            items: gradientColors.map((e) {
              return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      padding: const EdgeInsets.only(right: 10,
                          top: 10,
                          bottom: 10,
                          left: 20),
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: gradientColors[
                          _random.nextInt(gradientColors.length)],
                        ),
                        borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                Text('CREDIT card',
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic
                                  ),
                                    ),
                                  Icon(Icons.wifi,
                                  color: Colors.white54,
                                  size: 25)
                                ],
                              ),
                              const Image(
                                image: AssetImage('assets/images/globus.png',
                              ),
                                height: 50,
                              ),
                              const Text('0 0 0 x x x x x x x x x x 0 0 0',
                             style: TextStyle(
                               color: Colors.white38,
                               fontWeight: FontWeight.w400,
                               fontSize: 20,
                             ),
                              ),
                              const Text('Name  Username',
                              style: TextStyle(
                                color: Colors.black26,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),)
                            ],
                        ),
                    );
                  }
              );
            }).toList()
        ),
      ),
    );
  }
}
