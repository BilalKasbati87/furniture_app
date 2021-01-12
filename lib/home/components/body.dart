import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:furniture_app/home/components/recommended_item.dart';
import 'package:furniture_app/home/components/recommended_small_items.dart';
import 'package:furniture_app/home/components/short_listed_items.dart';
import 'package:furniture_app/home/components/widget_text.dart';

import 'nav_bar.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NavBarItems(),
            SizedBox(height: 30),
            WidgetText(
              text: 'shortlisted',
            ),
            SizedBox(height: 30),
            SortListed(),
            SizedBox(height: 30),
            WidgetText(
              text: 'recommended',
            ),
            SizedBox(height: 30),
            RecommendedItem(
              image: 'assets/images/image_4.png',
              text: 'Minimal Study Desk',
              price: 123.4,
              color: Colors.transparent,
            ),
            SizedBox(height: 30),
            RecommendedSmall(),
            SizedBox(height: 30),
            RecommendedItem(
              image: 'assets/images/image_1.png',
              text: 'Keto White Chair',
              price: 113.3,
              color: Color(0XFFF9D56E),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
