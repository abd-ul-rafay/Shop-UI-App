import 'package:flutter/material.dart';
import 'package:shop_app/screens/details/Components/product_title_with_image.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';
import 'add_to_cart_button.dart';
import 'color_and_size.dart';
import 'description.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.35),
                height: size.height * 0.55,
                padding: EdgeInsets.only(top: size.height * 0.12, left: myPadding, right: myPadding),
                decoration: const BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24))
                ),
                child: Column(
                  children: [
                    ColorAndSize(product: product),
                    Description(product: product),
                    const SizedBox(height: myPadding * 2,),
                    AddToCartButton(product: product)
                  ],
                )
              ),
              ProductTitleWithImage(product: product),
            ]
          ),
        ],
      ),
    );
  }
}
