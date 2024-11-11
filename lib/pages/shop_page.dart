import 'package:flutter/material.dart';
import 'package:minimal_shop/components/drawer.dart';
import 'package:minimal_shop/components/product_tile.dart';
import 'package:minimal_shop/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    //access the products in shop
    final products = context.watch<Shop>().shop;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Shop Page"),
          actions: [
            IconButton(
                onPressed: () => Navigator.pushNamed(context, '/cart_page'),
                icon: const Icon(Icons.shopping_cart))
          ],
        ),
        drawer: const MyDrawer(),
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: ListView(
          children: [
            const SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                "Pick  from a selected list of premium products",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),
            SizedBox(
              height: 550,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  padding: const EdgeInsets.all(15),
                  itemBuilder: (context, index) {
                    //get individual products
                    final product = products[index];

                    //return as producttile ui
                    return MyProductTile(product: product);
                  }),
            )
          ],
        ));
  }
}
