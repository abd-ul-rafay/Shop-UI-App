import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Color'),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        top: myPadding / 4,
                        right: myPadding / 2
                    ),
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                        color: Color(0xFF36749F),
                        shape: BoxShape.circle
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: myPadding / 4,
                        right: myPadding / 2
                    ),
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                        color: Color(0xFFE6CBB0),
                        shape: BoxShape.circle
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: myPadding / 4,
                        right: myPadding / 2
                    ),
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                        color: Color(0xFFDE3B5E),
                        shape: BoxShape.circle
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: myPadding / 4,
                        right: myPadding / 2
                    ),
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                        color: Color(0xFF47464C),
                        shape: BoxShape.circle
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(
                  style: Theme.of(context)
                      .textTheme.headline6
                      ?.copyWith(color: myTextLightColor),
                  children: [
                    const TextSpan(
                      text: 'Size\n',
                    ),
                    TextSpan(
                      text: '${product.size} cm',
                      style: Theme.of(context)
                          .textTheme.headlineLarge
                          ?.copyWith(color: myTextLightColor,
                          fontWeight: FontWeight.bold),
                    )
                  ]
              )
          ),
        )
      ],
    );
  }
}
