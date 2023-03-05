import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: myPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
              text: TextSpan(
                  style: const TextStyle(color: Colors.white),
                  children: [
                    const TextSpan(text: 'Aristocratic Hand Bag\n'),
                    TextSpan(text: product.title,
                        style: Theme.of(context).textTheme.headlineMedium
                            ?.copyWith(color: Colors.white, fontWeight: FontWeight.w800)),
                  ]
              )
          ),
          const SizedBox(height: myPadding,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RichText(
                  text: TextSpan(
                      children: [
                        const TextSpan(
                            text: 'Price\n'
                        ),
                        TextSpan(
                            text: '\$${product.price}',
                            style: Theme.of(context).
                            textTheme.headlineMedium?.
                            copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            )
                        )
                      ]
                  )
              ),
              Expanded(
                child: Hero(
                  tag: '${product.id}',
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
