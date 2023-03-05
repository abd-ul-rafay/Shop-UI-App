
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import 'components/body.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: IconButton(
        onPressed: () { },
        icon: SvgPicture.asset('assets/icons/back.svg',
          color: myTextLightColor,
        ),
      ),
      actions: <Widget>[
        IconButton(onPressed: () { },
          icon: SvgPicture.asset('assets/icons/search.svg',
            color: myTextLightColor),
        ),
        IconButton(onPressed: () { },
          icon: SvgPicture.asset('assets/icons/cart.svg',
             color: myTextLightColor),
        ),
        const SizedBox(width: myPadding / 2)
      ],
    );
  }
}
