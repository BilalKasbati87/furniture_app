import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/detailsScreen/components/bottom_yellow_information_bar.dart';
import 'package:furniture_app/detailsScreen/components/porduct_picture_with_colors.dart';
import 'package:furniture_app/detailsScreen/components/product_name_and_price.dart';

import 'background_grey_color.dart';
import 'bottom_image_bar.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              BackgroundGreyColor(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductPictureWithColors(),
                  BottomImageBar(),
                  ProductNameAndPrice(),
                  BottomYellowInformationBar(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
