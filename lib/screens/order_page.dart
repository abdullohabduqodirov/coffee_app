
import 'package:coffee_app/providers/order_page/order_providers.dart';
import 'package:coffee_app/services/card.dart';
import 'package:coffee_app/views/order_page/dismissible.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'compra_finalizade.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Carrinho',
          style: TextStyle(
            fontSize: 19,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () =>
           Navigator.pop(context)
          ,
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xff272221),
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: cardItem.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: const Key(''),
                background: slideRightBackground(),
                secondaryBackground: slideLeftBackground(),
                child: Column(
                  children: [
                    const Divider(),
                    Column(
                      children: [
                        ListTile(
                          leading: Image(
                            image: AssetImage(cardItem[index].coffee.imageUrl),
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                cardItem[index].coffee.name,
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                '${cardItem[index].size} ml',
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                          minLeadingWidth: 10,
                          subtitle: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        context
                                            .read<OrderProviders>()
                                            .decrementCoffee(cardItem[index]);
                                      },
                                      splashRadius: 1,
                                      icon: const Icon(
                                        Icons.remove,
                                        color: Color(0xff8047F8),
                                      ),
                                    ),
                                    Text(
                                      context
                                                  .watch<OrderProviders>()
                                                  .readCoffee(
                                                      cardItem[index]) <=
                                              9
                                          ? context
                                              .watch<OrderProviders>()
                                              .readCoffee(cardItem[index])
                                              .toString()
                                          : '9+',
                                      style: const TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                    IconButton(
                                      splashRadius: 1,
                                      onPressed: () {
                                        context
                                            .read<OrderProviders>()
                                            .incrementCoffee(cardItem[index]);
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        color: Color(0xff8047F8),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: const Color(0xffEDEDED),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    cardItem.remove(cardItem[index]);
                                    setState(() {});
                                  },
                                  icon: const Icon(
                                    CupertinoIcons.delete,
                                    color: Color(0xff8047F8),
                                  ),
                                ),
                              )
                            ],
                          ),
                          trailing: Text(
                            'R\$ ${cardItem[index].total.toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        const Divider(),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.bottomCenter,
              width: double.maxFinite,
              height: 150,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 3.0), //(x,y)
                    blurRadius: 12.0,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Valor total',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          context.read<OrderProviders>().allSumma();
                        },
                        child: Text(
                          'R\$ ${context.watch<OrderProviders>().allSumma().toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 50,
                    width: double.maxFinite,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const CompraFinalizade()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffC47F17),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'CONFIRMAR PEDIDO',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
