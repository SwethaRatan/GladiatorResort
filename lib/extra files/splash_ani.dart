/* import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'loginScreen.dart';

class SplashCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var getScreenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: CarouselSlider(
            options: CarouselOptions(
                height: getScreenHeight,
                autoPlay: true,
                viewportFraction: 1.0,
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 500)),
            items: [.................. Page view slider
              //"assets/images/1.jpg",
              //'assets/images/2.jpg',
              //'assets/images/3.jpg',
              //'assets/images/4.jpg',
              //'assets/images/5.jpg',
              CarouselImage("assets/images/1.jpg"),
              CarouselImage("assets/images/2.jpg"),
              CarouselImage("assets/images/3.jpg"),
              CarouselImage("assets/images/4.jpg"),
              CarouselImage("assets/images/5.jpg"),
            ]),
      ),
    );
  }
}

class CarouselImage extends StatelessWidget {
  final String imgPath;
  final String route;
  CarouselImage(this.imgPath, this.route, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
            child: Image.asset(imgPath, fit: BoxFit.fill),
            onTap: () {
              Navigator.push<Widget>(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            }));
  }
}

//.map((i) {
//        return Builder(
//          builder: (BuildContext context) {
//            return Container(
//                width: MediaQuery.of(context).size.width,
//                margin: EdgeInsets.symmetric(horizontal: 5.0),
//                decoration: BoxDecoration(color: Colors.amber),
//                child: GestureDetector(
//                    //child: Image.network(i, fit: BoxFit.fill),
//                    onTap: () {
//                  Navigator.push<Widget>(
//                    context,
//                    MaterialPageRoute(
//                      builder: (context) => LoginScreen(),
//                    ),
//                  );
//                }));
//          },
//        );
//      }).toList(),
 */