import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_shopping_cart/screens/cart_page.dart';

import 'controller/controller.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => CartUpdate(),
      child:const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  CartPage(),
      ),
    );
  }
}
