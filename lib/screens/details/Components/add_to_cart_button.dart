import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';

import '../../../constants.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (){},
        
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: product.color,
          ),
          child: Padding(
            padding: const EdgeInsets.all(myPadding / 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(width: myPadding / 2,),
                Icon(Icons.shopping_cart, color: Colors.white,),
                SizedBox(width: myPadding),
                Expanded(child: Text('Add to Cart', style: TextStyle(color: Colors.white),))
              ],
            ),
          ),
        )
    );
  }
}
