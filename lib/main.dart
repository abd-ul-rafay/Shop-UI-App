
import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/home_screen.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: myTextColor),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomeScreen(),
    );
  }
}
