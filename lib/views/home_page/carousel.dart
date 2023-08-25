import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../models/coffee.dart';
import '../../screens/single_coffee.dart';

class Carousel extends StatelessWidget {
  Carousel({Key? key, required this.list}) : super(key: key);
  List<Coffee> list;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.sizeOf(context).height * 0.261,
      ),
      child: CarouselSlider(
        items: [
          for (int i = 0; i < list.length; i++)
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            SingleCoffee(coffee: list[i])));
              },
              child: Container(
                width: 210,
                height: 299,
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Positioned(
                      left: 10,
                      top: 33,
                      child: Container(
                        width: 208,
                        height: 265,
                        decoration: const BoxDecoration(
                          color: Color(0XFFEDEDED),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(36),
                            bottomLeft: Radius.circular(36),
                            bottomRight: Radius.circular(6),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 15,
                      top: 1,
                      child: SizedBox(
                        width: 176,
                        height: 302,
                        child: Column(
                          children: [
                            Image.asset(
                              list[i].imageUrl,
                              height: 110,
                              width: 110,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 81,
                              height: 21,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(100),
                                ),
                                color: Color(0XFFEBE5F9),
                              ),
                              child: Text(
                                list[i].category,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontFamily: "Baloo2",
                                  fontWeight: FontWeight.w700,
                                  color: Color(0XFF4B2995),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 11,
                            ),
                            Text(
                              list[i].name,
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontFamily: "Baloo2",
                                fontSize: 24,
                                color: Color(0XFF403937),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 176,
                              height: 35,
                              child: Text(
                                textAlign: TextAlign.center,
                                list[i].description,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  fontFamily: "Baloo2",
                                  color: Color(0XFF8D8686),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 17,
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  const TextSpan(
                                    text: "R\$ ",
                                    style: TextStyle(
                                      color: Color(0XFFC47F17),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: list[i].cost.toString(),
                                    style: const TextStyle(
                                      color: Color(0XFFC47F17),
                                      fontSize: 24,
                                      fontFamily: "Baloo2",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
        options: CarouselOptions(
          //padEnds: true,
          enableInfiniteScroll: true,
          height: 280,
          enlargeCenterPage: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          viewportFraction: 0.53,
        ),
      ),
    );
  }
}