import 'package:coffee_app/providers/order_page/order_providers.dart';
import 'package:coffee_app/providers/singleCoffee/single_coffee_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => SingleCoffeeProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => OrderProviders(),
    )
  ], child: const MyApp()));
}
