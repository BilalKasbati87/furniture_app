import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      toolbarHeight: 80,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
      ),
      shadowColor: Colors.white.withOpacity(0.5),
      elevation: 3,
      backgroundColor: kPrimaryColor,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/menu.svg'),
        onPressed: () {},
      ),
      centerTitle: true,
      title: IconButton(
        icon: SvgPicture.asset('assets/icons/logo.svg'),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset('assets/icons/search.svg'),
          onPressed: () {},
        ),
        SizedBox(width: 20),
      ],
    );
  }
}
