import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                Text(
                  '1',
                  style: GoogleFonts.robotoSlab(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 20),
                Container(
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
