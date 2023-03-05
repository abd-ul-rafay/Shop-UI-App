
import 'dart:ui';

import '../constants.dart';

class Product {
  final String image, title, description;
  final int id, price, size;
  final Color color;

  Product({
      required this.id,
      required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.size,
      required this.color
      });
}

List<Product> products = [
  Product(id: 1, image: 'assets/images/bag2.png', title: 'Office Code', description: dummyDescription, price: 313, size: 8, color: const Color(0xFF36749F)),
  Product(id: 2, image: 'assets/images/bag1.png', title: 'Old Fashion', description: dummyDescription, price: 256, size: 12, color: const Color(0xFFE6CBB0)),
  Product(id: 3, image: 'assets/images/bag3.png', title: 'Light Weight', description: dummyDescription, price: 139, size: 9, color: const Color(0xFFDE3B5E)),
  Product(id: 4, image: 'assets/images/bag5.png', title: 'Belt Bag', description: dummyDescription, price: 310, size: 12, color: const Color(0xFF47464C)),
  Product(id: 5, image: 'assets/images/bag6.png', title: 'Fancy One', description: dummyDescription, price: 234, size: 10, color: const Color(0xFFB7919E)),
  Product(id: 6, image: 'assets/images/bag9.png', title: 'Wide Space', description: dummyDescription, price: 229, size: 11, color: const Color(0xFFEECABA)),
  Product(id: 7, image: 'assets/images/bag7.png', title: 'Pinkish', description: dummyDescription, price: 229, size: 11, color: const Color(0xFFD58B7D)),
  Product(id: 8, image: 'assets/images/bag8.png', title: 'Leather & Chain', description: dummyDescription, price: 229, size: 11, color: const Color(0xFF2B2B2D)),
  Product(id: 9, image: 'assets/images/bag4.png', title: 'Classical', description: dummyDescription, price: 229, size: 11, color: const Color(0xFFD14158)),
];
