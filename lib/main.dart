import 'package:flutter/material.dart';
import 'package:minimal_shop/models/shop.dart';
import 'package:minimal_shop/pages/cart_page.dart';
import 'package:minimal_shop/pages/intro_page.dart';
import 'package:minimal_shop/pages/shop_page.dart';
import 'package:minimal_shop/themes/lightmode.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: lightMode,
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) => const CartPage(),
      },
    );
  }
}
