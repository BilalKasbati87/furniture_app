import 'package:flutter/material.dart';

import 'package:furniture_app/detailsScreen/details_screen.dart';

class SortListed extends StatelessWidget {
  const SortListed({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ShortListedItems(
            color1: Color(0XFFFFBFBF),
            color2: Color(0XFFF2F2F2),
            color3: Color(0XFFE5FFFC),
            color4: Color(0XFFFFF4EB),
            image: 'assets/images/image_8.png',
          ),
          SizedBox(width: 30),
          ShortListedItems(
            color1: Color(0XFFFFFFFF),
            color2: Color(0XFFF0EDC4),
            color3: Color(0XFFC4D5F0),
            color4: Color(0XFFFFE2D0),
            image: 'assets/images/image_5.png',
          ),
        ],
      ),
    );
  }
}

class ShortListedItems extends StatelessWidget {
  const ShortListedItems({
    Key key,
    this.color1,
    this.color2,
    this.color3,
    this.color4,
    this.image,
  }) : super(key: key);
  final Color color1, color2, color3, color4;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            height: 255,
            width: 225,
            decoration: BoxDecoration(
              color: color1,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 245,
            width: 225,
            decoration: BoxDecoration(
              color: color2,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 235,
            width: 225,
            decoration: BoxDecoration(
              color: color3,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 225,
            width: 225,
            decoration: BoxDecoration(
              color: color4,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return DetailsScreen();
                      },
                    ),
                  );
                },
                child: Image(
                  image: AssetImage(image),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
