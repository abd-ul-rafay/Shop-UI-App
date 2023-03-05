
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/Product.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.product, required this.press});

  final Product product;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(myPadding / 1.2)
              ),
              child: Hero(
                  tag: '${product.id}',
                  child: Image.asset(product.image)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: myPadding / 2, top: myPadding / 2),
            child: RichText(
                text: TextSpan(
                  style: const TextStyle(color: myTextColor),
                  children: [
                    TextSpan(text: '${product.title}\n'),
                    TextSpan(text: '\$${product.price}',
                        style: const TextStyle(fontWeight: FontWeight.bold, color: myTextColor)
                    ),
                  ]
                )
              ),
          )
        ],
      ),
    );
  }
}
