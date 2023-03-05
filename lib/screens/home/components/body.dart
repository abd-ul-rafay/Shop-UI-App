
import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/details/details_screen.dart';

import '../../../models/Product.dart';
import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: myPadding),
          child: Text('Women',
              style: Theme.of(context)
                  .textTheme.headline5
                  ?.copyWith(fontWeight: FontWeight.bold)
          ),
        ),

        const Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: myPadding),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200.0,
                  mainAxisSpacing: myPadding,
                  crossAxisSpacing: myPadding,
                  childAspectRatio: 0.75
                ),
                itemBuilder: (BuildContext context, int index) => ItemCard(
                    product: products[index],
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsScreen(product: products[index])
                      )
                    )
                ),
              ),
            ),
          ),
        ),

      ]);
  }
}
