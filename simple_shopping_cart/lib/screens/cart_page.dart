import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../component/productRow.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cart',
              style: GoogleFonts.robotoSlab(
                  fontSize: 30, fontWeight: FontWeight.bold),
            ),
            ProductRow(
              name: 'Onion',
              price: 5.1,
            ),
            ProductRow(
              name: 'Lemon',
              price: 5.2,
            ),
            ProductRow(
              name: 'Potato',
              price: 5.7,
            ),
            ProductRow(
              name: 'Cucumber',
              price: 6.1,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:const [
                  Text("Checkout"),
                  Text('\$22.1'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
