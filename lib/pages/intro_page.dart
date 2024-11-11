import 'package:flutter/material.dart';
import 'package:minimal_shop/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shopping_bag,
                size: 72,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(height: 30),
              const Text(
                "Minimal Shop",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "Premium quality design",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(height: 30),
              MyButton(
                  onTap: () => Navigator.pushNamed(context, '/shop_page'),
                  child: const Icon(Icons.arrow_forward))
            ],
          ),
        ));
  }
}
