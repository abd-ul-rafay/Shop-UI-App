
import 'package:flutter/cupertino.dart';
import 'package:shop_app/models/Product.dart';

class Description extends StatelessWidget {
  const Description({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(product.description),
    );
  }

}