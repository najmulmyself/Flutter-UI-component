import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_shopping_cart/controller/controller.dart';

class ProductRow extends StatelessWidget {
  ProductRow({this.name, this.price});
  String? name;
  double? price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(
            'https://picsum.photos/200/200',
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name!,
              style: GoogleFonts.robotoSlab(
                  fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Icon(
                    Icons.remove,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 20),
                Consumer<CartUpdate>(
                  // need to add type
                  builder: (context, cartUpdate, child) {
                    return Text(
                      cartUpdate.add.toString(),
                      style: GoogleFonts.robotoSlab(
                          color: Colors.grey.shade600,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    );
                  },
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    Provider.of<CartUpdate>(context, listen: false).update();
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        Text(
          "\$${price}",
          style: GoogleFonts.robotoSlab(
              color: Colors.grey.shade600,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
