import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Product List'),
        actions: [
          Center(
            child: Badge(
              // animationDuration: Duration(milliseconds: 300),
              badgeContent: const Text(
                '0',
                style: TextStyle(color: Colors.white),
              ),
              child: const Icon(Icons.shopping_bag_outlined),
            ),
          ),
          const SizedBox(width: 20.0),
        ],
      ),
    );
  }
}
