import 'package:flutter/material.dart';
import '../../../constants.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  var selectedCategory = 0; // default first category
  List<String> categories = ['Hand bag', 'Dresses', 'Footwear', 'Jewellery', 'Makeup', 'Watches', 'More...'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: myPadding),
      child: SizedBox(
        height: 50,
        child: ListView.builder(
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => buildCategories(index)
        ),
      ),
    );
  }

  Widget buildCategories(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: myPadding),
      child: GestureDetector(
        onTap: () {
          setState((){
            selectedCategory = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(categories[index],
                style: TextStyle(fontWeight: FontWeight.bold,
                    color: (selectedCategory == index)? myTextColor : myTextLightColor
                )
            ),
            Container(
                margin: const EdgeInsets.only(top: myPadding / 4), // 5
                width: 30,
                height: 2,
                color: (selectedCategory == index)? myTextColor : myTextLightColor
            )
          ],
        ),
      ),
    );
  }
}
