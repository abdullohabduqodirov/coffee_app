
import 'package:coffee_app/models/card_item.dart';
import 'package:coffee_app/models/coffee.dart';
import 'package:coffee_app/providers/singleCoffee/single_coffee_provider.dart';
import 'package:coffee_app/screens/order_page.dart';
import 'package:coffee_app/services/card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class SingleCoffee extends StatelessWidget {
  SingleCoffee({Key? key, required this.coffee}) : super(key: key);
  Coffee coffee;
  CardItem? cardItem1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0XFF272221),
        leadingWidth: 55,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              size: 24,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(
              Icons.shopping_cart,
              color: Color(0XFF8047F8),
              size: 28,
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery
                .sizeOf(context)
                .height * 0.58,
            width: double.maxFinite,
            padding: const EdgeInsets.all(20),
            color: const Color(0xff272221),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 35,
                  width: 95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xff403937),
                  ),
                  child: Center(
                    child: Text(
                      coffee.category,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      coffee.name,
                      style: const TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    ),
                    Row(
                      children: [
                        const Text(
                          'R\$',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffDBAC2C),
                          ),
                        ),
                        Text(
                          coffee.cost.toStringAsFixed(2),
                          style: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w900,
                            color: Color(0xffDBAC2C),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  coffee.description,
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 100),
            child: const Image(
              height: 290,
              image: AssetImage('assets/images/coffee1.png'),
            ),
          ),
          const Positioned(
            top: 245,
            left: 180,
            child: Image(
              image: AssetImage('assets/images/smoke.png'),
              height: 120,
            ),
          ),
          Positioned(
            top: MediaQuery
                .sizeOf(context)
                .height * 0.67,
            right: 20,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Selecione o tamanho:',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(
                      0xff8D8686,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.read<SingleCoffeeProvider>().sizeSelect(114);
                      },
                      child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: context
                                .watch<SingleCoffeeProvider>()
                                .size ==
                                114
                                ? const Color(
                              0xff8047F8,
                            )
                                : Colors.transparent,
                          ),
                          color: Colors.black12,
                        ),
                        child: const Center(
                          child: Text(
                            '114 ml',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.read<SingleCoffeeProvider>().sizeSelect(140);
                      },
                      child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: context
                                .watch<SingleCoffeeProvider>()
                                .size ==
                                140
                                ? const Color(
                              0xff8047F8,
                            )
                                : Colors.transparent,
                          ),
                          color: Colors.black12,
                        ),
                        child: const Center(
                          child: Text(
                            '140 ml',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.read<SingleCoffeeProvider>().sizeSelect(227);
                      },
                      child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: context
                                .watch<SingleCoffeeProvider>()
                                .size ==
                                227
                                ? const Color(
                              0xff8047F8,
                            )
                                : Colors.transparent,
                          ),
                          color: Colors.black12,
                        ),
                        child: const Center(
                          child: Text(
                            '227 ml',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {
                          context.read<SingleCoffeeProvider>().countDecrement();
                        },
                        splashRadius: 1,
                        icon: const Icon(
                          Icons.remove,
                          color: Color(0xff8047F8),
                        ),
                      ),
                      Consumer<SingleCoffeeProvider>(
                        builder: (BuildContext context, value, Widget? child) {
                          return Text(
                            cardItem1?.count != null
                                ? cardItem1!.count.toString()
                                : context
                                .watch<SingleCoffeeProvider>()
                                .count
                                .toString(),
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          );
                        },
                      ),

                      //Text(context.watch<SingleCoffeeProvider>().count.toString()),
                      IconButton(
                        onPressed: () {
                          context.read<SingleCoffeeProvider>().countIncrement();
                        },
                        splashRadius: 1,
                        icon: const Icon(
                          Icons.add,
                          color: Color(0xff8047F8),
                        ),
                      ),
                      SizedBox(
                        height: 46,
                        width: 180,
                        child: ElevatedButton(
                          onPressed: () {
                            int size = Provider
                                .of<SingleCoffeeProvider>(
                                context,
                                listen: false)
                                .size;
                            int count = Provider
                                .of<SingleCoffeeProvider>(
                                context,
                                listen: false)
                                .count;
                            cardItem1 = CardItem(
                                id: cardItem.length + 1,
                                coffee: coffee,
                                size: size,
                                count: count

                            );

                            cardItem.add(cardItem1!);
                            Provider
                                .of<SingleCoffeeProvider>(
                                context, listen: false)
                                .count = 0;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const OrderPage()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff4B2995),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          child: const Text(
                            'ADICIONAR',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
