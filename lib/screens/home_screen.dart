
import 'package:coffee_app/views/home_page/bottom_coffee.dart';
import 'package:coffee_app/views/home_page/carousel.dart';
import 'package:coffee_app/views/home_page/category.dart';
import 'package:coffee_app/views/home_page/top_widget.dart';
import 'package:flutter/material.dart';

import '../services/coffess.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0XFF272221),
        leadingWidth: 35,
        leading: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Icon(
            Icons.location_on_sharp,
            color: Color(0XFF8047F8),
          ),
        ),
        title: const Text(
          "Porto Alegre, Rs",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: const [
          Icon(
            Icons.shopping_cart,
            color: Color(0XFFC47F17),
            size: 24,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        primary: true,
        child: Stack(
          children: [
            const TopWidget(),
            Carousel(list: list),
            Column(
              children: [
                 SizedBox(
                  height: MediaQuery.sizeOf(context).height*0.36,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Category(),
                        BottomCoffee(
                          list: list,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
