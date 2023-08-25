
import 'package:coffee_app/screens/single_coffee.dart';
import 'package:flutter/material.dart';

import '../../models/coffee.dart';

class BottomCoffee extends StatelessWidget {
  BottomCoffee({Key? key, required this.list}) : super(key: key);
  List<Coffee> list;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < list.length; i++)
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: 140,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SingleCoffee(coffee: list[i])));
                  },
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    alignment: Alignment.centerRight,
                    width: 370,
                    height: 120,
                    decoration: const BoxDecoration(
                      color: Color(0XFFEDEDED),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(36),
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(6),
                      ),
                    ),
                    child: SizedBox(
                      width: 255,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            list[i].name,
                            style: const TextStyle(
                              fontSize: 20,
                              fontFamily: "Baloo2",
                              fontWeight: FontWeight.w700,
                              color: Color(
                                0XFF403937,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            list[i].description,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0XFF8D8686),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: "R\$ ",
                                  style: TextStyle(
                                    color: Color(0XFFC47F17),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: "9,90",
                                  style: TextStyle(
                                    color: Color(0XFFC47F17),
                                    fontSize: 24,
                                    fontFamily: "Baloo2",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  child: Image.asset(
                    list[i].imageUrl,
                    height: 96,
                    width: 96,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
